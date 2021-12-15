// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ViewCourseD extends StatefulWidget {
  const ViewCourseD({Key? key}) : super(key: key);

  @override
  _ViewCourseDState createState() => _ViewCourseDState();
}

class _ViewCourseDState extends State<ViewCourseD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: [
                  Image.asset(
                    'assets/profile.jpeg',
                    scale: 10.2,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 10),
                    child: Column(
                      children: [
                        Text('laknvldknvdlksfnv'),
                        Text('dlkfvndflkbndlfkbndlkbnd'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 10,
              thickness: 1.2,
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Edit profile'),
              onTap: () {
                Navigator.pushNamed(context, '/edit');
              },
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text('View Courses'),
              onTap: () {
                Navigator.pushNamed(context, '/viewcD');
              },
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Item 3'),
              onTap: () {},
            ),
            Divider(
              height: 1,
              thickness: 1.2,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Label',
              ),
            ),
            ListTile(
              leading: Icon(Icons.bookmark),
              title: Text('Item A'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Center(
          child: Text(
            'name',
            style: TextStyle(
              fontFamily: 'Mouse Memoirs',
              fontSize: 50,
              color: Color(0xffFFFFFF),
            ),
          ),
        ),
        backgroundColor: Color(0xff0E0A57),
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
                image: new AssetImage('assets/4.PNG'), fit: BoxFit.cover)),
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(20),
                        child: Card(
                          color: Color(0xffD05B19),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: GridTile(
                            child: Center(
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 40, horizontal: 10),
                                  child: Text(
                                    "Theory of computation",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Mouse Memoirs',
                                      fontSize: 35,
                                      color: Color(0xff48210B),
                                    ),
                                  )),
                            ),
                          ),
                        )),
                        Column(
                          children: [
                            ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/second');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff0E0A57),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(padding: EdgeInsets.all(1),
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                color: Color(0xffE7B8CD),
                              ),
                            ),
                            )
                            ),
                            ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/second');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff0E0A57),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(padding: EdgeInsets.all(1),
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                color: Color(0xffE7B8CD),
                              ),
                            ),
                            )
                            ),
                          ],
                        ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(20),
                        child: Card(
                          color: Color(0xffD05B19),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: GridTile(
                            child: Center(
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 40, horizontal: 10),
                                  child: Text(
                                    "Theory of computation",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Mouse Memoirs',
                                      fontSize: 35,
                                      color: Color(0xff48210B),
                                    ),
                                  )),
                            ),
                          ),
                        )),
                        Column(
                          children: [
                            ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/second');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff0E0A57),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(padding: EdgeInsets.all(1),
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                color: Color(0xffE7B8CD),
                              ),
                            ),
                            )
                            ),
                            ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/second');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff0E0A57),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(padding: EdgeInsets.all(1),
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                color: Color(0xffE7B8CD),
                              ),
                            ),
                            )
                            ),
                          ],
                        ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(20),
                        child: Card(
                          color: Color(0xffD05B19),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: GridTile(
                            child: Center(
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 40, horizontal: 10),
                                  child: Text(
                                    "Theory of computation",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Mouse Memoirs',
                                      fontSize: 35,
                                      color: Color(0xff48210B),
                                    ),
                                  )),
                            ),
                          ),
                        )),
                        Column(
                          children: [
                            ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/second');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff0E0A57),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(padding: EdgeInsets.all(1),
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                color: Color(0xffE7B8CD),
                              ),
                            ),
                            )
                            ),
                            ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/second');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff0E0A57),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(padding: EdgeInsets.all(1),
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                color: Color(0xffE7B8CD),
                              ),
                            ),
                            )
                            ),
                          ],
                        ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(20),
                        child: Card(
                          color: Color(0xffD05B19),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: GridTile(
                            child: Center(
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 40, horizontal: 10),
                                  child: Text(
                                    "Theory of computation",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Mouse Memoirs',
                                      fontSize: 35,
                                      color: Color(0xff48210B),
                                    ),
                                  )),
                            ),
                          ),
                        )),
                        Column(
                          children: [
                            ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/second');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff0E0A57),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(padding: EdgeInsets.all(1),
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                color: Color(0xffE7B8CD),
                              ),
                            ),
                            )
                            ),
                            ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/second');
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff0E0A57),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                )),
                            child: Padding(padding: EdgeInsets.all(1),
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                color: Color(0xffE7B8CD),
                              ),
                            ),
                            )
                            ),
                          ],
                        ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
