// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/Model/users_model.dart';

class Drawer1s extends StatefulWidget {
  @override
  _Drawer1sState createState() => _Drawer1sState();
}

class _Drawer1sState extends State<Drawer1s> {
  Users us= Users();
  CollectionReference usersref = FirebaseFirestore.instance.collection("users");

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
            leading: Icon(
              Icons.home,
              color: Color(0xff36344b),
            ),
            title: Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/third');
            },
          ),
         
          ListTile(
            leading: Icon(Icons.circle, size: 20, color: Color(0xff36344b)),
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
            leading: Icon(Icons.exit_to_app_rounded, color: Color(0xff36344b)),
            title: Text('Sign out'),
            onTap: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushNamed(context, '/signout');
            },
          ),
        ],
      ),
    );
  }
}
