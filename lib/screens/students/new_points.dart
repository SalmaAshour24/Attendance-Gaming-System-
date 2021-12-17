import 'package:flutter/material.dart';
import '../doctor/app_bar.dart';
import '../doctor/drawer.dart';
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
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 30,
                color: Color(0xff6E85B2),
              ))
        ],
        backgroundColor: Color(0xff5A0C0C),
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
                    "Points",
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
                    EdgeInsets.only(bottom: 60, top: 60, left: 90, right: 90),
              ),
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Name:',
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'Mouse Memoirs',
                            color: Colors.black)),
                    const Text('40 Points',
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'Mouse Memoirs',
                            color: Colors.black)),
                  ],
                ),
              ]),
            ])
          ]),
        ));
  }
}
