// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff5A0C0C),
        body: ListView(
          children: [
            Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    //background
                    image: AssetImage("assets/3.PNG"),
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
                          "SIGN UP HERE",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Mouse Memoirs',
                            fontSize: 30,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      elevation: 30,
                      color: Color(0xff5A0C0C),
                      margin: EdgeInsets.only(
                          bottom: 45, top: 90, left: 95, right: 90),
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
                                Color(0XFFFFCCFF),
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter your Name',  focusedBorder: OutlineInputBorder(
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
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff8E7364),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: TextFormField(
                          cursorColor:
                                Color(0XFFFFCCFF),
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter your ID',  focusedBorder: OutlineInputBorder(
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
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff8E7364),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: TextFormField(cursorColor:
                                Color(0XFFFFCCFF),
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter your Email',  focusedBorder: OutlineInputBorder(
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
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff8E7364),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: TextFormField(cursorColor:
                                Color(0XFFFFCCFF),
                          // obscure tkhalih msh bayn el pass
                          obscureText: true,

                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter your password',  focusedBorder: OutlineInputBorder(
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
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff8E7364),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: TextFormField(
                          cursorColor:
                                Color(0XFFFFCCFF),
                          obscureText: true,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Re-Enter your Password',  focusedBorder: OutlineInputBorder(
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
                      padding: const EdgeInsets.only(top: 50.0, bottom: 130),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                      
                             Container(
                                decoration: BoxDecoration(
                            //color: Color(0xff8E7364),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff5A0C0C),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  textStyle: TextStyle(
                                    fontSize: 40,
                                    fontFamily: 'Mouse Memoirs',
                                  )),
                                  child:      Text(
                                'BACK',
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                ),),
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xff5A0C0C),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  textStyle: TextStyle(
                                    fontSize: 40,
                                    fontFamily: 'Mouse Memoirs',
                                  )),
                              child: Text(
                                'SIGN UP',
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                ),
                              )),
                          
                       
                        ],
                      ),
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.only(top: 50, bottom: 70),
                    //   child: ElevatedButton(
                    //       onPressed: () {},
                    //       style: ElevatedButton.styleFrom(
                    //           primary: Color(0xffF7E6AD),
                    //           shape: RoundedRectangleBorder(
                    //             borderRadius: BorderRadius.circular(40),
                    //           ),
                    //           textStyle: TextStyle(
                    //             fontSize: 40,
                    //             fontWeight: FontWeight.bold,
                    //             fontFamily: 'Mouse Memoirs',
                    //           )),
                    //       child: Text(
                    //         'SIGN UP',
                    //         style: TextStyle(
                    //           color: Color(0xff110C52),
                    //         ),
                    //       )),
                    // ),
                  ],
                )),
          ],
        ));
  }
}
