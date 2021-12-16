import 'package:flutter/material.dart';

class Drawer1 extends StatefulWidget {
  @override
  _Drawer1State createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {
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
            title: Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/homeD');
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Edit profile'),
            onTap: () {
              Navigator.pushNamed(context, '/edit');
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Student Points'),
            onTap: () {
              Navigator.pushNamed(context, '/pointsD');
            },
          ),
          ListTile(
            leading: Icon(Icons.ac_unit_outlined),
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
