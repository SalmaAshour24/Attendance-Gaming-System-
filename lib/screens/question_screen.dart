// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

import 'app_bar.dart';
import 'drawer.dart';

class QuestionScreen extends StatefulWidget {
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
    final CountDownController _controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer1(),
      appBar: AppBar(
        title: App(),
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
                image: new AssetImage('assets/4.PNG'), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(
               // height: 80,
                child:Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20))
                            ),
                        child: ListTile(
                          title: Text(
                            "theory of computation",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Mouse Memoirs',
                              fontSize: 35,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        elevation: 40,
                        color: Color(0xff110C52),
                      )
              ),
              
              Text(
                "Please answer the following!",
                style: TextStyle(
                  fontFamily: 'Mouse Memoirs',
                  fontSize: 30,
                  color: Color(0xffffffff),
                ),
              ),
                    Container(
margin: EdgeInsets.only(left: 240),  
            child: CircularCountDownTimer(
                duration: 60,
                initialDuration: 0,
                controller: _controller,
                width: MediaQuery.of(context).size.width / 10,
                height: MediaQuery.of(context).size.height / 10,
                ringColor: Colors.grey[300]!,
                ringGradient: null,
                fillColor: Color(0xff8ECAE6),
                fillGradient: null,
                backgroundColor: Color(0xff0E0A57),
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Container(
                    child:  Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text('q1:what is automata',textAlign: TextAlign.center, style: TextStyle(
                          fontFamily: 'Mouse Memoirs',
                          fontSize: 40,
                          color: Color(0xff8C86F5),
                        ),),
                    ),

                    width: double.infinity,
                    height: 120,
                    color: Colors.white,
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
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff353189)),
                          child: Text(
                            'submit',
                            style: TextStyle(
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
               ),
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
          padding: const EdgeInsets.all(20.0),
          child: Text('Answer',textAlign: TextAlign.center, style: TextStyle(
                            fontFamily: 'Mouse Memoirs',
                            fontSize: 40,
                            color: Color(0xffffffff),
                          ),),
        ),
        width: MediaQuery.of(context).size.width / 2 - 70,
        height: MediaQuery.of(context).size.width / 2 - 90,
        color: Color(0xff0E0A57),
      ),
    );
  }
}
