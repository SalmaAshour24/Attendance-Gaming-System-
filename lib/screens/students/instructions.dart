import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/students/app_barS.dart';
import 'app_barS.dart';
import 'drawerS.dart';
import 'package:flutter_sliding_up_panel/flutter_sliding_up_panel.dart';

class QuizIns extends StatefulWidget {
  const QuizIns({Key? key}) : super(key: key);

  @override
  _QuizInsState createState() => _QuizInsState();
}

class _QuizInsState extends State<QuizIns> {
  String _colorName = '';
  Color _color = Colors.black;
  SlidingUpPanelController panelController = SlidingUpPanelController();

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
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
                      image: new AssetImage('assets/4.PNG'),
                      fit: BoxFit.cover)),
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
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CircularMenu(
                      alignment: Alignment.bottomCenter,
                      backgroundWidget: Center(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black, fontSize: 28),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'instructions',
                                style: TextStyle(
                                    color: _color, fontWeight: FontWeight.bold),
                              ),
                              //      TextSpan(text: ' button is clicked.'),
                            ],
                          ),
                        ),
                      ),
                      toggleButtonColor: Colors.pink,
                      items: [
                        CircularMenuItem(
                            icon: Icons.home,
                            color: Colors.green,
                            onTap: () {
                              setState(() {
                                _color = Colors.green;
                                _colorName = 'Green';
                              });
                            }),
                        CircularMenuItem(
                            icon: Icons.search,
                            color: Colors.blue,
                            onTap: () {
                              setState(() {
                                _color = Colors.blue;
                                _colorName = 'Blue';
                              });
                            }),
                        CircularMenuItem(
                            icon: Icons.settings,
                            color: Colors.orange,
                            onTap: () {
                              setState(() {
                                _color = Colors.orange;
                                _colorName = 'Orange';
                              });
                            }),
                        CircularMenuItem(
                            icon: Icons.chat,
                            color: Colors.purple,
                            onTap: () {
                              setState(() {
                                _color = Colors.purple;
                                _colorName = 'Purple';
                              });
                            }),
                        CircularMenuItem(
                            icon: Icons.notifications,
                            color: Colors.brown,
                            //  enableBadge: true,
                            //   badgeLabel: 'do not close the exam window',
                            // badgeColor: Colors.white,
                            onTap: () {
                              setState(() {
                                _color = Colors.brown;
                                _colorName = 'Brown';
                              });
                            })
                      ],
                    ),
                  ),
                ])
              ])))
    ]);
  }
}
