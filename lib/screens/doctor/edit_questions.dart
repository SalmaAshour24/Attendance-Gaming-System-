import 'package:flutter/material.dart';

class EditQuestions extends StatefulWidget {
  const EditQuestions({Key? key}) : super(key: key);

  @override
  _EditQuestionsState createState() => _EditQuestionsState();
}

class _EditQuestionsState extends State<EditQuestions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer1(),
      appBar: AppBar(
        // title: App(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 30,
                color: Color(0xff6E85B2),
              ))
        ],
        backgroundColor: Color(0xff0E0A57),
      ),
      backgroundColor: Color(0xffFFB703),
      body: Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage('assets/edit2.PNG'), fit: BoxFit.cover)),
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
                  color: Color(0xff023047),
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
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                      elevation: 20,
                      color: Color(0xff8C86F5),
                      margin: EdgeInsets.only(
                          bottom: 30, top: 30, left: 90, right: 90),
                    ),

                    Text(
                      'Choices:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Mouse Memoirs',
                        fontSize: 35,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '1)programming language:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Mouse Memoirs',
                            fontSize: 35,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                        Text(
                          '2)framework:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Mouse Memoirs',
                            fontSize: 35,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                        Text(
                          '3)None',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Mouse Memoirs',
                            fontSize: 35,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff0E0A57)),
                        child: Text(
                          'Add',
                          style: TextStyle(
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
