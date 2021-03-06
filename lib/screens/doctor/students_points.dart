import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'drawer.dart';

class NewPoints1 extends StatefulWidget {
  @override
  _PointsState createState() => _PointsState();
}

class _PointsState extends State<NewPoints1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer1(),
        appBar: AppBar(
          backgroundColor: Color(0xff36344b),
        ),
//        backgroundColor: Color(0xff581313),
        body: Container(
          decoration: new BoxDecoration(
                           color: Color(0xfff8edee),
          ),
          child: ListView(children: [
            Column(children: [
              Card(
                
                child: const ListTile(
                  title: Text(
                    "Points",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                                  fontFamily: 'Lora-VariableFont_wght',
                      fontSize: 40,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
                elevation: 30,
                color: Color(0xff36344b),
                margin:
                    EdgeInsets.only(bottom: 60, top: 60, left: 90, right: 90),
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(children: [
                    Padding(padding: EdgeInsets.all(10)),
                    const Text('Maha: ',
                        style: TextStyle(
                            fontSize: 35,
                                  fontFamily: 'Lora-VariableFont_wght',
                            color: Colors.black)),
                    const Text('40 Points',
                        style: TextStyle(
                            fontSize: 35,
                                  fontFamily: 'Lora-VariableFont_wght',
                            color: Colors.black))
                  ]),
                  Row(children: [
                    Padding(padding: EdgeInsets.all(10)),
                    const Text('Salma: ',
                        style: TextStyle(
                            fontSize: 35,
                                  fontFamily: 'Lora-VariableFont_wght',
                            color: Colors.black)),
                    const Text('35 Points',
                        style: TextStyle(
                            fontSize: 35,
                                  fontFamily: 'Lora-VariableFont_wght',
                            color: Colors.black))
                  ]),
                  Row(children: [
                    Padding(padding: EdgeInsets.all(10)),
                    const Text('Shadwa: ',
                        style: TextStyle(
                            fontSize: 35,
                                  fontFamily: 'Lora-VariableFont_wght',
                            color: Colors.black)),
                    const Text('30 Points',
                        style: TextStyle(
                            fontSize: 35,
                                  fontFamily: 'Lora-VariableFont_wght',
                            color: Colors.black))
                  ]),
                  Row(children: [
                    Padding(padding: EdgeInsets.all(10)),
                    const Text('Bassant: ',
                        style: TextStyle(
                            fontSize: 35,
                                  fontFamily: 'Lora-VariableFont_wght',
                            color: Colors.black)),
                    const Text('25 Points',
                        style: TextStyle(
                            fontSize: 35,
                                  fontFamily: 'Lora-VariableFont_wght',
                            color: Colors.black))
                  ]),
                  Row(children: [
                    Padding(padding: EdgeInsets.all(10)),
                    const Text('Omar: ',
                        style: TextStyle(
                            fontSize: 35,
                                  fontFamily: 'Lora-VariableFont_wght',
                            color: Colors.black)),
                    const Text('40 Points',
                        style: TextStyle(
                            fontSize: 35,
                                  fontFamily: 'Lora-VariableFont_wght',
                            color: Colors.black))
                  ]),
                ],
              ),
            ])
          ]),
        ));
  }
}
