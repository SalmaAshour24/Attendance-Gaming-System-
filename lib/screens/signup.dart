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
        backgroundColor: Color(0xff322275),
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

                       ElevatedButton.icon(onPressed: (){
                       Navigator.pop(context);
                       },icon: Icon(Icons.arrow_back),label: Text('back'), ),
                                            

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
                              fontSize: 50,
                              color: Color(0xff110C52),
                            ),
                          ),
                        ),
                        elevation: 30,
                        color: Color(0xffFFBCBC),
                        margin: EdgeInsets.only(
                            bottom: 45, top: 70, left: 95, right: 90),
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
                                hintText: 'Enter your Name'),
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
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter your ID'),
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
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: TextFormField(
                                                        obscureText: true,

                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Re-Enter your Password'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 70,bottom: 50),
                        child: ElevatedButton(
                            onPressed: () {},
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