import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/doctor/app_bar.dart';
import 'package:flutter_application_1/screens/doctor/drawer.dart';

class EditQuestions extends StatefulWidget {
  const EditQuestions({Key? key}) : super(key: key);

  @override
  _EditQuestionsState createState() => _EditQuestionsState();
}

class _EditQuestionsState extends State<EditQuestions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer1(),
      appBar: AppBar(
        title: App(),
       
        backgroundColor: Color(0xff5A0C0C),
      ),
      backgroundColor: Color(0xffFFB703),
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
                      "Add Question",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Mouse Memoirs',
                        fontSize: 40,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                  elevation: 20,
                  color: Color(0xff5A0C0C),
                  margin:
                      EdgeInsets.only(bottom: 30, top: 30, left: 90, right: 90),
                ),
                Column(
                  children: [
                    // Text(
                    //   'What is Flutter:',
                    //   textAlign: TextAlign.center,
                    //   style: TextStyle(
                    //     fontFamily: 'Mouse Memoirs',
                    //     fontSize: 35,
                    //     color: Color(0xffFFFFFF),
                    //   ),
                    // ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: const ListTile(
                        title: Text(
                          "What is flutter?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Mouse Memoirs',
                            fontSize: 40,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      elevation: 20,
                      color: Color(0xff8E7364),
                      margin: EdgeInsets.only(
                          bottom: 30, top: 30, left: 90, right: 90),
                    ),

                    Column(
                      children: [
                        Text(
                          '1)programming language:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Mouse Memoirs',
                            fontSize: 35,
                            color: Color(0xff000000),
                          ),
                        ),
                        Text(
                          '2)framework:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Mouse Memoirs',
                            fontSize: 35,
                            color: Color(0xff000000),
                          ),
                        ),
                        Text(
                          '3)None',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Mouse Memoirs',
                            fontSize: 35,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: const ListTile(
                        title: Text(
                          "What is Dart?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Mouse Memoirs',
                            fontSize: 40,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      elevation: 20,
                      color: Color(0xff8E7364),
                      margin: EdgeInsets.only(
                          bottom: 30, top: 30, left: 90, right: 90),
                    ),

                    Column(
                      children: [
                        Text(
                          '1)programming language:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Mouse Memoirs',
                            fontSize: 35,
                            color: Color(0xff000000),
                          ),
                        ),
                        Text(
                          '2)framework:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Mouse Memoirs',
                            fontSize: 35,
                            color: Color(0xff000000),
                          ),
                        ),
                        Text(
                          '3)None',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Mouse Memoirs',
                            fontSize: 35,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff5A0C0C)),
                        child: Text(
                          'Edit',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xffffffff),
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