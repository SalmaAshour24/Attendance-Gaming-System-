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
        backgroundColor: Color(0xff36344b),
      ),
      // backgroundColor: Color(0xff5A0C0C),
      body: Container(
        decoration: new BoxDecoration(
                              color: Color(0xfff8edee),
        ),
        child: ListView(
          children: [
            Column(
              children: [
                
                    Container(
                        padding: const EdgeInsets.all(20),
                        child: Card(
                          color: Color(0xff6c6996),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2)),
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
                                      fontSize: 20,
                                      color: Color(0xffffffff),
                                    ),
                                  )),
                            ),
                          ),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/addQ');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff36344b),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(
                              padding: EdgeInsets.all(1),
                              child: Text(
                                'Add',
                                style: TextStyle(
                                  color: Color(0XFFffffff),
                                ),
                              ),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/eq');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff36344b),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(
                              padding: EdgeInsets.all(1),
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                ),
                              ),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/homeD');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff36344b),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(
                              padding: EdgeInsets.all(1),
                              child: Text(
                                'Delete',
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                ),
                              ),
                            )),
                      ],
                    ),
                                 SizedBox(
                  height: 30,
                ),

                Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(20),
                        child: Card(
                          color: Color(0xff6c6996),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2)),
                          child: GridTile(
                            child: Center(
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 40, horizontal: 10),
                                  child: Text(
                                    "Mobile Programming",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                      fontFamily: 'Lora-VariableFont_wght',
                                      fontSize: 20,
                                      color: Color(0xffffffff),
                                    ),
                                  )),
                            ),
                          ),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/addQ');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff36344b),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(
                              padding: EdgeInsets.all(1),
                              child: Text(
                                'Add',
                                style: TextStyle(
                                  color: Color(0XFFffffff),
                                ),
                              ),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/eq');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff36344b),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(
                              padding: EdgeInsets.all(1),
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                ),
                              ),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/homeD');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff36344b),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(
                              padding: EdgeInsets.all(1),
                              child: Text(
                                'Delete',
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(20),
                        child: Card(
                          color: Color(0xff6c6996),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2)),
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
                                      fontSize: 20,
                                      color: Color(0xffffffff),
                                    ),
                                  )),
                            ),
                          ),
                        )),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/addQ');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff36344b),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(
                              padding: EdgeInsets.all(1),
                              child: Text(
                                'Add',
                                style: TextStyle(
                                  color: Color(0XFFffffff),
                                ),
                              ),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/eq');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff36344b),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(
                              padding: EdgeInsets.all(1),
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                ),
                              ),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/homeD');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff36344b),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(
                              padding: EdgeInsets.all(1),
                              child: Text(
                                'Delete',
                                style: TextStyle(
                                  color: Color(0xffffffff),
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
