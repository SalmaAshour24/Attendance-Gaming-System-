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
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 30,
                  color: Color(0xff6E85B2),
                ))
          ],
          backgroundColor: Color(0xff581313),
        ),
        backgroundColor: Color(0xffFFB703),
        body: Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage('assets/4.PNG'), fit: BoxFit.cover)),
            child: ListView(children: [
              Column(children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/question');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff523232),
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
                Text(
                  "Please See the instructions bellow",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Mouse Memoirs',
                    fontSize: 35,
                    color: Color(0xff581313),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  height: 300,
                  color: Color(0xff581313),
                  child: Column(
                    children: [
                      Text(
                        "1)Feel free to navigate through the questions",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Mouse Memoirs',
                          fontSize: 35,
                          color: Color(0xffffffff),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "2)You can submit only one time",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Mouse Memoirs',
                          fontSize: 35,
                          color: Color(0xffffffff),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "3)The time will start once you started the quiz",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Mouse Memoirs',
                          fontSize: 35,
                          color: Color(0xffffffff),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "4)If any thing happened during the quiz, Contact your doctor",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Mouse Memoirs',
                          fontSize: 35,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                )
              ])
            ])));
  }
}
