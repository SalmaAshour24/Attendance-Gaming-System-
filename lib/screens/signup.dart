// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff36344b),
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
  var username, password, email;

  final _formKey = GlobalKey<FormState>();
  signUp() async {
    var formdata = _formKey.currentState;
    if (formdata!.validate()) {
      print('valid');
      formdata.save();
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        return userCredential;
      } on FirebaseException catch (e) {
        if (e.code == 'weak-password') {
          // AwesomeDialog(
          //     context: context,
          //     title: "Error",
          //     body: Text('the password is too weak'))..show();
          print('the password is too weak');
        } else if (e.code == 'email-already-in-use') {
          print('the account already exists');
        }
      } catch (e) {
        print(e);
      }
    } else {
      print('not valid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Container(
          decoration: new BoxDecoration(
            color: Color(0xfff8edee),
          ),
          child: ListView(
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, left: 20),
                    child: Text(
                      'MIU ',
                      style: TextStyle(
                        color: Color(0xff36344b),
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                        fontFamily: 'Lora-VariableFont_wght',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Text(
                      'Attendance system ',
                      style: TextStyle(
                        color: Color(0xff6c6996),
                        fontFamily: 'Lora-VariableFont_wght',
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: const ListTile(
                  title: Text(
                    "SIGN UP HERE",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Lora-VariableFont_wght',
                      fontSize: 25,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
                elevation: 30,
                color: Color(0xff36344b),
                margin:
                    EdgeInsets.only(bottom: 45, top: 30, left: 95, right: 90),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                child: Container(
                  child: TextFormField(
                    onSaved: (val) {
                      username = val;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    cursorColor: Color(0XFFFFCCFF),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        labelText: 'Enter Your First Name',
                        labelStyle: TextStyle(
                            color: Color(0xff36344b),
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                        border: null,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff6c6996), width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 5))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Container(
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    cursorColor: Color(0XFFFFCCFF),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        labelText: 'Enter Your Last Name',
                        labelStyle: TextStyle(
                            color: Color(0xff36344b),
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                        border: null,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff6c6996), width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 5))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Container(
                  child: TextFormField(
                    onSaved: (val) {
                      email = val;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                          .hasMatch(value)) {
                        return 'Please Enter a valid Email';
                      }
                      return null;
                    },
                    cursorColor: Color(0XFFFFCCFF),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        labelText: 'Enter your Email',
                        labelStyle: TextStyle(
                            color: Color(0xff36344b),
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                        border: null,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff6c6996), width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 5))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Container(
                  child: TextFormField(
                    obscureText: true,
                    onSaved: (val) {
                      password = val;
                    },
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
                        labelStyle: TextStyle(
                            color: Color(0xff36344b),
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                        border: null,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff6c6996), width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 5))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Container(
                  child: TextFormField(
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    cursorColor: Color(0XFFFFCCFF),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        labelText: 'Re-enter Password',
                        labelStyle: TextStyle(
                            color: Color(0xff36344b),
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                        border: null,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff6c6996), width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 5))),
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
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff36344b),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1),
                            ),
                            textStyle: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Lora-VariableFont_wght',
                            )),
                        child: Text(
                          'BACK',
                          style: TextStyle(
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          UserCredential response = await signUp();

                          if (response != null) {
                            Navigator.of(context).pushNamed("third");
                          } else {
                            print("Sign up failed");
                          }
                          //  print(response.user);
                          // if (_formKey.currentState!.validate()) {
                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //     const SnackBar(content: Text('Processing Data')),
                          //   );
                          //   //     FirebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
                          //   Navigator.pop(context);
                          // }
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff36344b),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1),
                            ),
                            textStyle: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Lora-VariableFont_wght',
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
            ],
          ),
        ));
  }
}
