// ignore_for_file: prefer_const_constructors

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/students/question_screen.dart';

import '../doctor/app_bar.dart';
import '../doctor/drawer.dart';
import 'app_barS.dart';
import 'drawerS.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer1s(),
      appBar: AppBar(
        title: Apps(),
        backgroundColor: Color(0xff3D0000),
      ),
      //backgroundColor: Color(0xffFFB703),
      body: Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage('assets/4.PNG'), fit: BoxFit.cover)),
        child: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 30,
                mainAxisSpacing: 40,
                crossAxisCount: 2,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      // AnimatedSplashScreen(
                      //   nextScreen: QuestionScreen(),
                      //   splash: Image.asset(
                      //     "assets/1.PNG",
                      //     fit: BoxFit.fill,
                      //   ),
                      // );
                      Navigator.pushNamed(context, '/question');
                    },
                    child: Container(
                        padding: const EdgeInsets.all(0),
                        child: Card(
                          color: Color(0xff5A0C0C),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: GridTile(
                            child: Center(
                              child: Text(
                                "Data Engineering",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Mouse Memoirs',
                                  fontSize: 35,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/question');
                    },
                    child: Container(
                        padding: const EdgeInsets.all(0),
                        child: Card(
                          color: Color(0xff5A0C0C),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: GridTile(
                            child: Center(
                              child: Text(
                                "Selected topics",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Mouse Memoirs',
                                  fontSize: 35,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/question');
                    },
                    child: Container(
                        padding: const EdgeInsets.all(0),
                        child: Card(
                          color: Color(0xff5A0C0C),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: GridTile(
                            child: Center(
                              child: Text(
                                "Mobile Device programming",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Mouse Memoirs',
                                  fontSize: 35,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/question');
                    },
                    child: Container(
                        padding: const EdgeInsets.all(0),
                        child: Card(
                          color: Color(0xff5A0C0C),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: GridTile(
                            child: Center(
                              child: Text(
                                "Theory of computation",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Mouse Memoirs',
                                  fontSize: 35,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
