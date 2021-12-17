// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff3D0000),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 1.0),
              child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      //background
                      image: AssetImage("assets/2.PNG"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: const ListTile(
                          title: Text(
                            "SIGN IN HERE",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Mouse Memoirs',
                              fontSize: 40,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        elevation: 30,
                        color: Color(0xff3D0000),
                        margin: EdgeInsets.only(
                            bottom: 60, top: 100, left: 90, right: 90),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff8E7364),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: TextFormField(
                            cursorColor:
                                Color(0XFFFFCCFF), //Cursor color change

                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                              hintText: 'Enter your Email',
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffffffff),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff8E7364),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: TextFormField(
                            // obscure tkhalih msh bayn el pass
                            obscureText: true,
cursorColor:
                                Color(0XFFFFCCFF),
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter your password',
                                focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffffffff),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Text(
                          'SignIn',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xff5A0C0C),
                            fontFamily: 'Mouse Memoirs',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/third');
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xff5A0C0C),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    textStyle: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'Mouse Memoirs',
                                    )),
                                child: Text(
                                  'As Student',
                                  style: TextStyle(
                                    color: Color(0xffffffff),
                                  ),
                                )),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/homeD');
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xff5A0C0C),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    textStyle: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'Mouse Memoirs',
                                    )),
                                child: Text(
                                  'As Doctor',
                                  style: TextStyle(
                                    color: Color(0xffffffff),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 70.0),
                        child: Text(
                          'Do not have an account?',
                          style: TextStyle(
                            color: Color(0xff5A0C0C),
                            fontFamily: 'Mouse Memoirs',
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 70),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/second');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff3D0000),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Mouse Memoirs',
                                )),
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                color: Color(0xffffffff),
                              ),
                            )),
                      ),
                    ],
                  )),
            )
          ],
        ));
  }
}
