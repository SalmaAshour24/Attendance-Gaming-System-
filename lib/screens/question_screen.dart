// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'app_bar.dart';
import 'drawer.dart';

class QuestionScreen extends StatefulWidget {
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
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
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  child: Card(
                    color: Color(0xffD05B19),
                    elevation: 10,
                    child: GridTile(
                      child: Center(
                        child: Text(
                          "Mobile device programming",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Mouse Memoirs',
                            fontSize: 35,
                            color: Color(0xff48210B),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                "Please answer the following!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Mouse Memoirs',
                  fontSize: 35,
                  color: Color(0xffffffff),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                child: Container(
                  width: double.infinity,
                  height: 30,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Container(
                    width: double.infinity,
                    height: 150,
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
        width: MediaQuery.of(context).size.width / 2 - 80,
        height: MediaQuery.of(context).size.width / 2 - 80,
        color: Colors.black,
      ),
    );
  }
}
