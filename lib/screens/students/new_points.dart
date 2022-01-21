import 'package:flutter/material.dart';

import 'app_barS.dart';
import 'drawerS.dart';

class NewPoints extends StatefulWidget {
  @override
  _PointsState createState() => _PointsState();
}

class _PointsState extends State<NewPoints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer1s(),
      appBar: AppBar(
        title: Apps(),
    
        backgroundColor: Color(0xff36344b),
      ),
        backgroundColor: Color(0xff36344b),
        body: Container(
          decoration: new BoxDecoration(
                           color: Color(0xfff8edee),
          ),
          child: ListView(children: [
            Column(children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
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
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Name:',
                        style: TextStyle(
                            fontSize: 35,
                                  fontFamily: 'Lora-VariableFont_wght',
                            color: Colors.black)),
                    const Text('40 Points',
                        style: TextStyle(
                            fontSize: 35,
                                  fontFamily: 'Lora-VariableFont_wght',
                            color: Colors.black)),
                  ],
                ),
              ]),
            ])
          ]),
        ));
  }
}
