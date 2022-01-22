// ignore_for_file: prefer_const_constructors

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/students/question_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'app_barS.dart';
import 'drawerS.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
//3shan tt3mel awel ma el user yft7 el home page
  getUser() {
    //ygbly m3lomat el user el 3amel 3nde auth, akher shakhs 3ml sign in bynato htkon mtsgela w dy myza fl firebase
    //user who is signed in
    var user = FirebaseAuth.instance.currentUser;
    print(user!.email);
  }

  List courses = [];
  CollectionReference usersref =
      FirebaseFirestore.instance.collection("courses");

  getData() async {
    var responsebody = await usersref.get();
    responsebody.docs.forEach((element) {
      setState(() {
        courses.add(element.data());
      });
    });

    print(courses);
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer1s(),
      appBar: AppBar(
        title: Apps(),
        backgroundColor: Color(0xff36344b),
      ),
      body: Container(
        decoration: new BoxDecoration(
          color: Color(0xfff8edee),
        ),
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: ListView.builder(
              itemCount: courses.length,
              itemBuilder: (context, i) {
                return Text("${courses[i]['name']}");
              }

              // children: [
              //   Column(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: <Widget>[
              //       GestureDetector(
              //         onTap: () {
              //           Navigator.pushNamed(context, '/ins');
              //         },
              //         child: Container(
              //             padding: const EdgeInsets.all(0),
              //             child: Card(
              //               color: Color(0xff36344b),
              //               elevation: 10,
              //               shape: RoundedRectangleBorder(
              //                   borderRadius: BorderRadius.circular(2)),
              //               child: GridTile(
              //                 child: Center(
              //                   child: Padding(
              //                     padding: const EdgeInsets.symmetric(
              //                         vertical: 40, horizontal: 10),
              //                     child: Text(
              //                       "Courses",
              //                       textAlign: TextAlign.center,
              //                       style: TextStyle(
              //                         fontFamily: 'Lora-VariableFont_wght',
              //                         fontSize: 30,
              //                         color: Color(0xffffffff),
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //             )),
              //       ),
              //     ],
              //   ),
              // ],
              ),
        ),
      ),
    );
  }
}
