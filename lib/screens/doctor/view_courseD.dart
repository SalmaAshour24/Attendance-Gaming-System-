// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'app_bar.dart';
import 'drawer.dart';

class ViewCourseD extends StatefulWidget {
  const ViewCourseD({Key? key}) : super(key: key);

  @override
  _ViewCourseDState createState() => _ViewCourseDState();
}

class _ViewCourseDState extends State<ViewCourseD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer1(),
      appBar: AppBar(
        title: App(),
     
        backgroundColor: Color(0xff5A0C0C),
      ),
      backgroundColor: Color(0xff5A0C0C),
      body: Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage('assets/4.PNG'), fit: BoxFit.cover)),
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(20),
                        child: Card(
                          color: Color(0xff8E7364),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: GridTile(
                            child: Center(
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 40, horizontal: 10),
                                  child: Text(
                                    "Theory of computation",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Mouse Memoirs',
                                      fontSize: 35,
                                      color: Color(0xff000000),
                                    ),
                                  )),
                            ),
                          ),
                        )),
                    Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/addQ');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff581313),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(
                              padding: EdgeInsets.all(1),
                              child: Text(
                                'Add',
                                style: TextStyle(
                                  color: Color(0xffE7B8CD),
                                ),
                              ),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/eq');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff581313),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(
                              padding: EdgeInsets.all(1),
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                  color: Color(0xffE7B8CD),
                                ),
                              ),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/homeD');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff581313),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(
                              padding: EdgeInsets.all(1),
                              child: Text(
                                'Delete',
                                style: TextStyle(
                                  color: Color(0xffE7B8CD),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(20),
                        child: Card(
                          color: Color(0xff8E7364),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: GridTile(
                            child: Center(
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 40, horizontal: 10),
                                  child: Text(
                                    "Mobile Programming",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Mouse Memoirs',
                                      fontSize: 35,
                                      color: Color(0xff000000),
                                    ),
                                  )),
                            ),
                          ),
                        )),
                    Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/addQ');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff581313),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(
                              padding: EdgeInsets.all(1),
                              child: Text(
                                'Add',
                                style: TextStyle(
                                  color: Color(0xffE7B8CD),
                                ),
                              ),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/eq');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff581313),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(
                              padding: EdgeInsets.all(1),
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                  color: Color(0xffE7B8CD),
                                ),
                              ),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/homeD');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff581313),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(
                              padding: EdgeInsets.all(1),
                              child: Text(
                                'Delete',
                                style: TextStyle(
                                  color: Color(0xffE7B8CD),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(20),
                        child: Card(
                          color: Color(0xff8E7364),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: GridTile(
                            child: Center(
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 40, horizontal: 10),
                                  child: Text(
                                    "Selected Topics",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Mouse Memoirs',
                                      fontSize: 35,
                                      color: Color(0xff000000),
                                    ),
                                  )),
                            ),
                          ),
                        )),
                    Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/addQ');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff581313),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(
                              padding: EdgeInsets.all(1),
                              child: Text(
                                'Add',
                                style: TextStyle(
                                  color: Color(0xffE7B8CD),
                                ),
                              ),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/eq');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff581313),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(
                              padding: EdgeInsets.all(1),
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                  color: Color(0xffE7B8CD),
                                ),
                              ),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/homeD');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff581313),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(
                              padding: EdgeInsets.all(1),
                              child: Text(
                                'Delete',
                                style: TextStyle(
                                  color: Color(0xffE7B8CD),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}