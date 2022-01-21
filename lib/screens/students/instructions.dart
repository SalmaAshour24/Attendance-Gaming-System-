import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/students/app_barS.dart';
import 'app_barS.dart';
import 'drawerS.dart';

class QuizIns extends StatefulWidget {
  const QuizIns({Key? key}) : super(key: key);

  @override
  _QuizInsState createState() => _QuizInsState();
}

class _QuizInsState extends State<QuizIns> {
  late ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer1s(),
        appBar: AppBar(
          title: Apps(),
          backgroundColor: Color(0xff36344b),
        ),
        backgroundColor: Color(0xffFFB703),
        body: Container(
            decoration: new BoxDecoration(
                             color: Color(0xfff8edee),
            ),
            child: ListView(children: [
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top:38.0),
                  child: Text(
                    "Please See the instructions bellow",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                                  fontFamily: 'Lora-VariableFont_wght',
                      fontSize: 20,
                      color: Color(0xff36344b),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 400,
                    color: Color(0xff36344b),
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Column(
                        children: [
                          Text(
                            "1)Feel free to navigate through the questions.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Mouse Memoirs',
                              fontSize: 20,
                              color: Color(0xffffffff),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "2)You can submit only one time during the exam time.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Mouse Memoirs',
                              fontSize: 20,
                              color: Color(0xffffffff),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "3)The time will start once you started the quiz.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Mouse Memoirs',
                              fontSize: 20,
                              color: Color(0xffffffff),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "4)If any thing happened during the quiz, Contact your doctor.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Mouse Memoirs',
                              fontSize: 20,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/question');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff36344b),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Text(
                    'Attempt Quiz',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 25,
                    ),
                  ),
                ),
              ])
            ])));
  }
}
