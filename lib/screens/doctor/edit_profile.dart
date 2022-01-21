import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/doctor/app_bar.dart';
import 'package:flutter_application_1/screens/doctor/drawer.dart';

class Editprofile extends StatefulWidget {
  @override
  _EditprofileState createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer1(),
        appBar: AppBar(
          title: App(),
          backgroundColor: Color(0xff36344b),
        ),
        // backgroundColor: Color(0xff36344b),
        body: Container(
            decoration: new BoxDecoration(
              color: Color(0xfff8edee),
            ),
            child: ListView(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: const ListTile(
                    title: Text(
                      "Edit Profile",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Lora-VariableFont_wght',
                        fontSize: 25,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                  elevation: 30,
                  color: Color(0xff36344b),
                  margin:
                      EdgeInsets.only(bottom: 40, top: 60, left: 90, right: 90),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text('Name:',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Lora-VariableFont_wght',
                                  color: Colors.black)),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                  child: TextFormField(
                                      cursorColor: Color(0XFFFFCCFF),
                                      textAlign: TextAlign.center,
                                      decoration: const InputDecoration(
                                        border: null,
                                        hintText: 'Edit your name',
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xff6c6996),
                                              width: 2),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25)),
                                        ),
                                      ))),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50,
                        height: 30,
                      ),
                      Row(
                        children: [
                          const Text('Email:',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Lora-VariableFont_wght',
                                  color: Colors.black)),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                  child: TextFormField(
                                      cursorColor: Color(0XFFFFCCFF),
                                      textAlign: TextAlign.center,
                                      decoration: const InputDecoration(
                                        border: null,
                                        hintText: 'Edit your Email',
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xff6c6996),
                                              width: 2),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25)),
                                        ),
                                      ))),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50,
                        height: 30,
                      ),
                      Row(
                        children: [
                          const Text('ID:',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Lora-VariableFont_wght',
                                  color: Colors.black)),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                  child: TextFormField(
                                      cursorColor: Color(0XFFFFCCFF),
                                      textAlign: TextAlign.center,
                                      decoration: const InputDecoration(
                                        border: null,
                                        hintText: 'Edit your ID',
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xff6c6996),
                                              width: 2),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25)),
                                        ),
                                      ))),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50,
                        height: 30,
                      ),
                      Row(
                        children: [
                          const Text('Password:',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Lora-VariableFont_wght',
                                  color: Colors.black)),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                  child: TextFormField(
                                      cursorColor: Color(0XFFFFCCFF),
                                      textAlign: TextAlign.center,
                                      decoration: const InputDecoration(
                                        border: null,
                                        hintText: 'Edit your password',
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xff6c6996),
                                              width: 2),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25)),
                                        ),
                                      ))),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 50,
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff36344b),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      child: Text(
                        'Discard',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 30,
                          fontFamily: 'Lora-VariableFont_wght',
                        ),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/third');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff36344b),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 30,
                            fontFamily: 'Lora-VariableFont_wght',
                          ),
                        ))
                  ],
                )
              ],
            )));
  }
}
