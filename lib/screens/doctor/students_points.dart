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
        appBar: AppBar(          backgroundColor: Color(0xff581313),

          title: App(),
        
        ),
        backgroundColor: Color(0xff581313),
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
                color: Color(0xff581313),
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
                            fontFamily: 'Mouse Memoirs',
                            color: Colors.black)),
                    const Text('40 Points',
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'Mouse Memoirs',
                            color: Colors.black))
                  ]),
                  Row(children: [
                    Padding(padding: EdgeInsets.all(10)),
                    const Text('Salma: ',
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'Mouse Memoirs',
                            color: Colors.black)),
                    const Text('35 Points',
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'Mouse Memoirs',
                            color: Colors.black))
                  ]),
                  Row(children: [
                    Padding(padding: EdgeInsets.all(10)),
                    const Text('Shadwa: ',
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'Mouse Memoirs',
                            color: Colors.black)),
                    const Text('30 Points',
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'Mouse Memoirs',
                            color: Colors.black))
                  ]),
                  Row(children: [
                    Padding(padding: EdgeInsets.all(10)),
                    const Text('Bassant: ',
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'Mouse Memoirs',
                            color: Colors.black)),
                    const Text('25 Points',
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'Mouse Memoirs',
                            color: Colors.black))
                  ]),
                  Row(children: [
                    Padding(padding: EdgeInsets.all(10)),
                    const Text('Omar: ',
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'Mouse Memoirs',
                            color: Colors.black)),
                    const Text('40 Points',
                        style: TextStyle(
                            fontSize: 35,
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
