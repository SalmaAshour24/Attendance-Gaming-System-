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
          backgroundColor: Color(0xff3D0000),
        ),
        // backgroundColor: Color(0xffFFB703),
        body: Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage('assets/4.PNG'), fit: BoxFit.cover)),
            child: ListView(
              children: [
                Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: const ListTile(
                        title: Text(
                          "Edit Profile",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Mouse Memoirs',
                            fontSize: 50,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                      elevation: 30,
                      color: Color(0xff581313),
                      margin: EdgeInsets.only(
                          bottom: 40, top: 60, left: 90, right: 90),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              children: [
                                const Text('Name:',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontFamily: 'Mouse Memoirs',
                                        color: Colors.black)),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xff8E7364),
                                          borderRadius:
                                              new BorderRadius.circular(25.0),
                                        ),
                                        child: TextFormField(
                                            cursorColor: Color(0XFFFFCCFF),
                                            textAlign: TextAlign.center,
                                            decoration: const InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Edit your name',
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xffffffff),
                                                ),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(25)),
                                              ),
                                            ))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 50,
                            height: 30,
                          ),
                          Row(
                            children: [
                              const Text('Email:',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: 'Mouse Memoirs',
                                      color: Colors.black)),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xff8E7364),
                                        borderRadius:
                                            new BorderRadius.circular(25.0),
                                      ),
                                      child: TextFormField(
                                          cursorColor: Color(0XFFFFCCFF),
                                          textAlign: TextAlign.center,
                                          decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Edit your Email',
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xffffffff),
                                              ),
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
                                      fontSize: 30,
                                      fontFamily: 'Mouse Memoirs',
                                      color: Colors.black)),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xff8E7364),
                                        borderRadius:
                                            new BorderRadius.circular(25.0),
                                      ),
                                      child: TextFormField(
                                          cursorColor: Color(0XFFFFCCFF),
                                          textAlign: TextAlign.center,
                                          decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Edit your ID',
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xffffffff),
                                              ),
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
                                      fontSize: 30,
                                      fontFamily: 'Mouse Memoirs',
                                      color: Colors.black)),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xff8E7364),
                                        borderRadius:
                                            new BorderRadius.circular(25.0),
                                      ),
                                      child: TextFormField(
                                          cursorColor: Color(0XFFFFCCFF),
                                          textAlign: TextAlign.center,
                                          decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Edit your password',
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xffffffff),
                                              ),
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
                            primary: Color(0xff581313),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                          child: Text(
                            'Discard',
                            style: TextStyle(
                                color: Color(0xffffffff), fontSize: 30),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/homeD');
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff581313),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                  color: Color(0xffffffff), fontSize: 30),
                            ))
                      ],
                    )
                  ],
                ),
              ],
            )));
  }
}
