import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'drawer.dart';

class ViewAnswers extends StatefulWidget {
  @override
  _ViewAnswersState createState() => _ViewAnswersState();
}

class _ViewAnswersState extends State<ViewAnswers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer1(),
        appBar: AppBar(
                    backgroundColor: Color(0xff581313),

          title: App(),
        
        ),
        backgroundColor: Color(0xffFFB703),
        body: Container(
          decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage('assets/4.PNG'), fit: BoxFit.cover)),
          child: ListView(children: [
            Column(children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
                child: const ListTile(
                  title: Text(
                    "Answers",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Mouse Memoirs',
                      fontSize: 50,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
                elevation: 30,
                color: Color(0xff5A0C0C),
                margin:
                    EdgeInsets.only(bottom: 7, top: 40, left: 90, right: 90),
              ),
              Column(

                children: [
                  Column(
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        const Text('Maha: ',
                            style: TextStyle(
                                fontSize: 35,
                                fontFamily: 'Mouse Memoirs',
                                color: Colors.black)),

                        const Text('Answer1-> A, Answer2-> A, Answer3-> A, Answer4-> A ',
                            style: TextStyle(
                                fontSize: 23,
                                fontFamily: 'Mouse Memoirs',
                                color: Colors.black))
                      ]),
                  Column(

                    children: [
                    Padding(padding: EdgeInsets.all(10)),
                    const Text('Salma: ',
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'Mouse Memoirs',
                            color: Colors.black)),
                    const Text('Answer1-> B,Answer2-> A, Answer3-> A, Answer4-> A',
                        style: TextStyle(
                            fontSize: 23,
                            fontFamily: 'Mouse Memoirs',
                            color: Colors.black))
                  ]),
                  Column(
                                         
children: [
                    Padding(padding: EdgeInsets.all(10)),
                    const Text('Shadwa: ',
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'Mouse Memoirs',
                            color: Colors.black)),
                    const Text('Answer1-> C,Answer2-> A, Answer3-> A, Answer4-> A',
                        style: TextStyle(
                            fontSize: 23,
                            fontFamily: 'Mouse Memoirs',
                            color: Colors.black))
                  ]),
                  Column(                     

                    children: [
                    Padding(padding: EdgeInsets.all(10)),
                    const Text('Bassant: ',
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'Mouse Memoirs',
                            color: Colors.black)),
                    const Text('Answer1-> D,Answer2-> A, Answer3-> A, Answer4-> A',
                        style: TextStyle(
                            fontSize: 23,
                            fontFamily: 'Mouse Memoirs',
                            color: Colors.black))
                  ]),
                  Column(
children: const [
                    Padding(padding: EdgeInsets.all(10)),
                    Text('Omar: ',
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'Mouse Memoirs',
                            color: Colors.black)),
                    Text('Answer1-> A,Answer2-> A, Answer3-> A, Answer4-> A',
                        style: TextStyle(
                            fontSize: 23,
                            fontFamily: 'Mouse Memoirs',
                            color: Colors.black))
                  ]),
                ],
              ),
            ])
          ]),
        ));
  }
}
