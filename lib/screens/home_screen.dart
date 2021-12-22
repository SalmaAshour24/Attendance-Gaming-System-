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
      body: const MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: ListView(
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
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
                                return 'Please Enter a valid Email';
                              }
                              return null;
                            },
                            cursorColor: Color(0XFFFFCCFF),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                labelText: 'Enter Email',
                                border: OutlineInputBorder(),
                                errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 5))),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 20),
                        child: Container(
                          child: TextFormField(
                            obscureText: true,
                            // obscure tkhalih msh bayn el pass
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            cursorColor: Color(0XFFFFCCFF),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                labelText: 'Enter Password',
                                border: OutlineInputBorder(),
                                errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 5))),
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
                                  if (_formKey.currentState!.validate()) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text('Processing Data')),
                                    );
                                    Navigator.pushNamed(context, '/third');
                                  }
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
                                  if (_formKey.currentState!.validate()) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text('Processing Data')),
                                    );
                                    Navigator.pushNamed(context, '/homeD');
                                  }
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
