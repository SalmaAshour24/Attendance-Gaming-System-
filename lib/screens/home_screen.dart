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
        backgroundColor: Color(0xff4F102C),
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
                              fontSize: 50,
                              color: Color(0xff110C52),
                            ),
                          ),
                        ),
                        elevation: 30,
                        color: Color(0xffFFBCBC),
                        margin: EdgeInsets.only(
                            bottom: 60, top: 100, left: 90, right: 90),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter your Email'),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: TextFormField(
                            // obscure tkhalih msh bayn el pass
                            obscureText: true,

                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter your password'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: ElevatedButton(
                              onPressed: () {
                              Navigator.pushNamed(context, '/third');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffF7E6AD),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Mouse Memoirs',
                                )),
                            child: Text(
                              'SIGN IN ',
                              style: TextStyle(
                                color: Color(0xff110C52),
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Do not have an account?',
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontFamily: 'Mouse Memoirs',
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50, bottom: 70),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/second');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffF7E6AD),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Mouse Memoirs',
                                )),
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                color: Color(0xff110C52),
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