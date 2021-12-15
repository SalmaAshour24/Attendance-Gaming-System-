import 'package:flutter/material.dart';
import 'drawer.dart';
import 'app_bar.dart';

class Editprofile extends StatefulWidget {
  @override
  _EditprofileState createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
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
        ),
        backgroundColor: Color(0xffFFB703),
        body: Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage('assets/edit.PNG'),
                    fit: BoxFit.cover)),
            child: ListView(
              children: [
                Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: const ListTile(
                        title: Text(
                          "Edit Profile",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Mouse Memoirs',
                            fontSize: 50,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                      elevation: 30,
                      color: Color(0xff023047),
                      margin: EdgeInsets.only(
                          bottom: 60, top: 60, left: 90, right: 90),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            const Text('Name:',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Futura',
                                    color: Colors.black)),
                            new Flexible(
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius:
                                        new BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 15, right: 15, top: 5),
                                      child: TextFormField(
                                          decoration: InputDecoration()))),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 50,
                          height: 30,
                        ),
                        Row(
                          children: [
                            const Text('Email:',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Futura',
                                    color: Colors.black)),
                            new Flexible(
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius:
                                        new BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 15, right: 15, top: 5),
                                      child: TextFormField(
                                          decoration: InputDecoration()))),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 50,
                          height: 30,
                        ),
                        Row(
                          children: [
                            const Text('Password:',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Futura',
                                    color: Colors.black)),
                            new Flexible(
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius:
                                        new BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 15, right: 15, top: 5),
                                      child: TextFormField(
                                          obscureText: true,
                                          decoration: InputDecoration()))),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 50,
                          height: 30,
                        ),
                        Row(
                          children: [
                            const Text('Confirm Password:',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Futura',
                                    color: Colors.black)),
                            new Flexible(
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius:
                                        new BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 15, right: 15, top: 5),
                                      child: TextFormField(
                                          obscureText: true,
                                          decoration: InputDecoration()))),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff0E0A57)),
                          child: Text(
                            'Discard',
                            style: TextStyle(
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff0E0A57)),
                            child: Text(
                              'Submit',
                              style: TextStyle(color: Color(0xffffffff)),
                            ))
                      ],
                    )
                  ],
                ),
              ],
            )));
  }
}
