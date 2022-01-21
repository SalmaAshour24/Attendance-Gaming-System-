// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

import 'app_barS.dart';
import 'drawerS.dart';

class QuestionScreen extends StatefulWidget {
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final CountDownController _controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer1s(),
      appBar: AppBar(
        title: Apps(),
        backgroundColor: Color(0xff36344b),
      ),
      // backgroundColor: Color(0xffFFB703),
      body: Container(
        decoration: new BoxDecoration(
             color: Color(0xfff8edee),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(
                  // height: 80,
                  child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: ListTile(
                  title: Text(
                    "Name of the subject",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Lora-VariableFont_wght',
                      fontSize: 25,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
                elevation: 40,
                color: Color(0xff36344b),
              )),
              Row(
                children: [
                  Text(
                    "Please answer the following!",
                    style: TextStyle(
                      fontFamily: 'Lora-VariableFont_wght',
                      fontSize: 20,
                      color: Color(0xff36344b),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: CircularCountDownTimer(
                      duration: 60,
                      initialDuration: 0,
                      controller: _controller,
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 6,
                      ringColor: Colors.grey[300]!,
                      ringGradient: null,
                      fillColor: Color(0xff6c6996),
                      fillGradient: null,
                      backgroundColor: Color(0xff36344b),
                      textStyle: const TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      autoStart: true,
                      onStart: () {
                        print('Countdown Started');
                      },
                      onComplete: () {
                        print('Countdown Ended');
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top:20.0),
                      child: Text(
                        'q1:what is automata',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                                  fontFamily: 'Lora-VariableFont_wght',
                          fontSize: 25,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    width: double.infinity,
                    height: 70,
                    color: Color(0xff36344b),
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: AnswerWidget()),
                      Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: AnswerWidget()),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: AnswerWidget()),
                      Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: AnswerWidget()),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/third');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff36344b),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: Text(
                        'Submit all',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/bonus');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff36344b),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: Text(
                      'Bonus Questions',
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AnswerWidget extends StatelessWidget {
  const AnswerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(40)),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(top:40.0),
          child: Text(
            'Answer',
            textAlign: TextAlign.center,
            style: TextStyle(
                                  fontFamily: 'Lora-VariableFont_wght',
              fontSize: 20,
              color: Color(0xffffffff),
            ),
          ),
        ),
        width: 150,
        height: 100,
        color: Color(0xff6c6996),
      ),
    );
  }
}
