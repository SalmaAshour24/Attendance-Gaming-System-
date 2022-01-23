// ignore_for_file: prefer_const_constructors

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/course_model.dart';
import 'package:flutter_application_1/Model/questions_model.dart';
import 'package:flutter_application_1/providers/course_provider.dart';
import 'package:flutter_application_1/screens/students/question_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'app_barS.dart';
import 'drawerS.dart';

class viewcourse extends StatelessWidget {
  // This widget is the root of your application.
 
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CourseProviders(),
      child: MaterialApp(
          title: 'Course',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: colors.basic,

            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: homePage()),
    );
  }
}

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  getUser() {
    //ygbly m3lomat el user el 3amel 3nde auth, akher shakhs 3ml sign in bynato htkon mtsgela w dy myza fl firebase
    //user who is signed in
    var user = FirebaseAuth.instance.currentUser;
    print(user!.email);
  }

//3shan tt3mel awel ma el user yft7 el home page

  @override
  Widget build(BuildContext context) {
    CourseProviders courseProvider =
        Provider.of<CourseProviders>(context, listen: true);
    Future.delayed(Duration(seconds: 0), () async {
      courseProvider.getCoursesCollectionFromFirebase().then((value) {});
    });
    List<Course> courses = courseProvider.getCourse;
    print(courses.length);
    final Course course;
    return Scaffold(
        drawer: Drawer1s(),
        appBar: AppBar(
         // title: Apps(),
          backgroundColor: Color(0xff36344b),
        ),
        body: Container(
            decoration: new BoxDecoration(
              color: Color(0xfff8edee),
            ),
            child: Consumer<CourseProviders>(
                builder: (context, CourseProviders data, child) {
              return data.getCourse.length != 0
                  ? ListView.builder(
                      itemCount: data.getCourse.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onTap: () {
                              showAlertDialog(context,
                                  index: index, course: data.getCourse[index]);
                    
                            },
                            child: CardList(data.getCourse[index], index),
                                
                            
                            
                            );
                     
                      },
                    )
                  : Padding(
                      padding: const EdgeInsets.all(17.0),
                      child: ListView(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/ins');
                                },
                                child: Container(
                                    padding: const EdgeInsets.all(0),
                                    child: Card(
                                      color: Color(0xff36344b),
                                      elevation: 10,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(2)),
                                      child: GridTile(
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 40, horizontal: 10),
                                            child: Text(
                                              'data.getCourse[index].coursename!',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily:
                                                    'Lora-VariableFont_wght',
                                                fontSize: 30,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
            })));
  }
}

class CardList extends StatelessWidget {
  final Course course;
  int index;

  CardList(this.course, this.index);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(2.0),
        child: Slidable(
          startActionPane: ActionPane(
            motion: const DrawerMotion(),
            extentRatio: 0.25,
            children: [],
          ),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topLeft: Radius.circular(10),
                )),
            child: ListTile(
              leading: Icon(Icons.supervisor_account),
              title: Text(course.coursename ?? 'name'),
              subtitle: Text(course.description ?? 'descr'),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black26,
              ),
            ),
          ),
          endActionPane: ActionPane(
            motion: const DrawerMotion(),
            extentRatio: 0.25,
            children: [
             
            ],
          ),
        ));
  }
}

showAlertDialog(BuildContext context, {int index = -1, Course? course = null, Question? question}) {
  TextEditingController _name = TextEditingController();
  TextEditingController _description = TextEditingController();

  _name.text = (course?.coursename) ?? "";
  _description.text = (course?.description) ?? "";
  // Create button
  Widget okButton = ElevatedButton(
    child: Text("Attempt Quiz", style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 25,
                        ),),
     style: ElevatedButton.styleFrom(
      primary: Color(0xff36344b),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
    ),
    onPressed: () {
                       Navigator.pushNamed(context, '/ins');

   //   Navigator.of(context, rootNavigator: true).pop();
      DateTime now = DateTime.now();
      String id = now.hour.toString() +
          now.minute.toString() +
          now.second.toString() +
          now.toString();
      if (course != null) {
        Provider.of<CourseProviders>(context, listen: false).editCourse(
          index,
          _description.text,
          id,
          _name.text,
        );
      } else {
        Provider.of<CourseProviders>(context, listen: false).addCourse(
          _description.text,
          id,
          _name.text,
        );
      }
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Course details:"),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(_name.text),
        SizedBox(height: 10),
        Text(
          'description:' + _description.text,
        ),
        SizedBox(height: 10),
      ],
    ),
    actions: [
        okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
  
}
 class colors{
    static MaterialColor basic =  MaterialColor(
      0xff36344b,
      const <int,Color>{
        100:const Color(0xff36344b),
      }
    );
  }