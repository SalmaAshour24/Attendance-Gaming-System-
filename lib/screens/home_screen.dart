// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

var UT;

class _HomeScreenState extends State<HomeScreen> {
  getData() {
    CollectionReference usersref =
        FirebaseFirestore.instance.collection("users");
    usersref.get().then((value) {
      value.docs.forEach((element) {
        print(element.data());
        print("================================");
      });
    });
  }

  @override
  void initState() {
    //  addData();
    getData();
    super.initState();
  }

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
  var password, email;
  final _formKey = GlobalKey<FormState>();

  signIN() async {
    var formdata = _formKey.currentState;
    if (formdata!.validate()) {
      print('valid');
      formdata.save();
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
        return userCredential;
      } on FirebaseException catch (e) {
        if (e.code == 'user-not-found') {
          // Alert(
          //         context: context,
          //         title: "Email Issue",
          //         desc: "Email doesn't exists.")
          //     .show();
          // print('No user found for that email');
        } else if (e.code == 'wrong-password') {
          // Alert(
          //       context: context,
          //       title: "Password Issue",
          //       desc: "Password is wrong re-enter it ")
          //   .show();

          print('re-enter password, the password is wrong');
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
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 1.0),
              child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xfff8edee),
                  ),
                  child: Column(
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
                            "SIGN IN HERE",
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
                        margin: EdgeInsets.only(
                            bottom: 45, top: 30, left: 95, right: 90),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: Container(
                          child: TextFormField(
                            onSaved: (val) {
                              email = val;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              if (!RegExp(
                                      "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                  .hasMatch(value)) {
                                return 'Please Enter a valid Email';
                              }
                              return null;
                            },
                            cursorColor: Color(0XFFFFCCFF),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                labelText: 'Enter Email',
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
                            fontSize: 20,
                            color: Color(0xff36344b),
                            fontFamily: 'Lora-VariableFont_wght',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                onPressed: () async {
                                  var user = await signIN();

                                  if (user != null) {
                                    CollectionReference usersref =
                                        FirebaseFirestore.instance
                                            .collection("users");

                                    await usersref
                                        .where("email", isEqualTo: email)
                                        .get()
                                        .then((value) {
                                      value.docs.forEach((element) {
                                        var UT = element['usertype'];
                                        if (UT == 2) {
                                          Navigator.pushNamed(
                                              context, '/homeD');
                                        } else if (UT == 3) {
                                          Navigator.pushNamed(
                                              context, '/third');
                                        } else if (UT == 1) {
                                          Navigator.pushNamed(context, '/addC');
                                        }
                                      });
                                    });

                                    //Navigator.of(context).pushNamed("signout");
                                  } else {
                                    print("Sign in failed");
                                  }

                                  //   if (_formKey.currentState!.validate()) {
                                  //     ScaffoldMessenger.of(context).showSnackBar(
                                  //       const SnackBar(
                                  //           content: Text('Processing Data')),
                                  //     );
                                  //     //  Navigator.pushNamed(context, '/third');
                                  //   }
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xff6c6996),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(1),
                                    ),
                                    textStyle: TextStyle(
                                      fontSize: 30,
                                      fontFamily: 'Lora-VariableFont_wght',
                                    )),
                                child: Text(
                                  'Sign In',
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
                            color: Color(0xff6c6996),
                            fontFamily: 'Lora-VariableFont_wght',
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
                      ),
                    ],
                  )),
            )
          ],
        ));
  }
}
