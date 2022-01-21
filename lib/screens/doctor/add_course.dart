import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'drawer.dart';

class AddCourse extends StatefulWidget {
  const AddCourse({Key? key}) : super(key: key);

  @override
  _AddCourseState createState() => _AddCourseState();
}

class _AddCourseState extends State<AddCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer1(),
      appBar: AppBar(
        title: App(),
        backgroundColor: Color(0xff36344b),
      ),
      backgroundColor: Color(0xff36344b),
      body: Container(
        decoration: new BoxDecoration(
                    color: Color(0xffFFFFFF),
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: const ListTile(
                    title: Text(
                      "Add Course",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                                  fontFamily: 'Lora-VariableFont_wght',
                        fontSize: 25,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                  elevation: 20,
                  color: Color(0xff36344b),
                  margin:
                      EdgeInsets.only(bottom: 30, top: 30, left: 90, right: 90),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Text(
                            'Name: ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                  fontFamily: 'Lora-VariableFont_wght',
                              fontSize: 20,
                            ),
                          ),
                          Flexible(
                              child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Container(
                              
                              child: TextFormField(
                                    cursorColor: Color(0XFFFFCCFF),
                                    textAlign: TextAlign.center,
                                    decoration: const InputDecoration(
                                      border: null,
                                      hintText: 'Add course name',
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xff6c6996), width: 2),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                      ),
                                    ))
                            ),
                          )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Text(
                            'Description: ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                  fontFamily: 'Lora-VariableFont_wght',
                              fontSize: 20,
                            ),
                          ),
                          Flexible(
                              child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Container(
                              
                              child: TextFormField(
                                    cursorColor: Color(0XFFFFCCFF),
                                    textAlign: TextAlign.center,
                                    decoration: const InputDecoration(
                                      border: null,
                                      hintText: 'Add  your description',
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xff6c6996), width: 2),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                      ),
                                    ))
                            ),
                          )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/homeD');
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff36344b)),
                        child: Text(
                          'Add',
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 30,
                                  fontFamily: 'Lora-VariableFont_wght',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
