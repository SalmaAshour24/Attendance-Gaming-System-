import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/Model/users_model.dart';

class Drawer1 extends StatefulWidget {
  @override
  _Drawer1State createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {
  Users us= Users();
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
                      Text("${us.getEmail()}"),
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
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/homeD');
            },
          ),
          ListTile(
            leading: Icon(Icons.circle, size: 25),
            title: Text('Student Points'),
            onTap: () {
              Navigator.pushNamed(context, '/pointsD');
            },
          ),
          ListTile(
            leading: Icon(Icons.book_online_outlined),
            title: Text('View Answers'),
            onTap: () {
              Navigator.pushNamed(context, '/viewA');
            },
          ),
          Divider(
            height: 1,
            thickness: 1.2,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app_rounded),
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
