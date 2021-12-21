// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Drawer1s extends StatefulWidget {
  @override
  _Drawer1sState createState() => _Drawer1sState();
}

class _Drawer1sState extends State<Drawer1s> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  child: Column(
                    children: [
                      Text('Username'),
                      Text('name@yahoo.com'),
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
            leading: Icon(
              Icons.home,
              color: Color(0xff5C2424),
            ),
            title: Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/third');
            },
          ),
          ListTile(
            leading: Icon(Icons.person, color: Color(0xff5C2424)),
            title: Text('Edit Profile'),
            onTap: () {
              Navigator.pushNamed(context, '/edits');
            },
          ),
          ListTile(
            leading: Icon(Icons.circle, size: 20, color: Color(0xff5C2424)),
            title: Text('Points'),
            onTap: () {
              Navigator.pushNamed(context, '/point');
            },
          ),
          Divider(
            height: 1,
            thickness: 1.2,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app_rounded, color: Color(0xff5C2424)),
            title: Text('Sign out'),
            onTap: () {
              Navigator.pushNamed(context, '/signout');
            },
          ),
        ],
      ),
    );
  }
}
