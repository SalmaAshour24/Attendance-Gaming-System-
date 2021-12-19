import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'drawer.dart';

class AddCourse extends StatefulWidget {
  const AddCourse({Key? key}) : super(key: key);

  @override
  _AddCourseState createState() => _AddCourseState();
}

class _AddCourseState extends State<AddCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer1(),
      appBar: AppBar(
        title: App(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 30,
                color: Color(0xff6E85B2),
              ))
        ],
        backgroundColor: Color(0xff581313),
      ),
      backgroundColor: Color(0xffFFB703),
      body: Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage('assets/4.PNG'), fit: BoxFit.cover)),
        child: ListView(
          children: [
            Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: const ListTile(
                    title: Text(
                      "Add Course",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Mouse Memoirs',
                        fontSize: 40,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                  elevation: 20,
                  color: Color(0xff581313),
                  margin:
                      EdgeInsets.only(bottom: 30, top: 30, left: 90, right: 90),
                ),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Text(
                      'Name: ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Mouse Memoirs',
                        fontSize: 35,
                      ),
                    ),
                    Flexible(child: Padding(padding: EdgeInsets.all(5),
                    child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff8E7364),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    )),
                      ],
                    ),
                    ),
                    Padding(padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Text(
                      'Description: ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Mouse Memoirs',
                        fontSize: 35,
                      ),
                    ),
                    Flexible(child: Padding(padding: EdgeInsets.all(5),
                    child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff8E7364),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    )),
                      ],
                    ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff5A0C0C)),
                          child: Text(
                            'Add',
                            style: TextStyle(
                              color: Color(0xffffffff),fontSize: 40,
                              fontFamily: 'Mouse Memoirs',
                            ),
                          ),
                        ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}