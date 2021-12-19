import 'package:flutter/material.dart';

class Apps extends StatefulWidget {
  @override
  _AppsState createState() => _AppsState();
}

class _AppsState extends State<Apps> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'name',
        style: TextStyle(
          fontFamily: 'Mouse Memoirs',
          fontSize: 50,
          color: Color(0xffFFFFFF),
        ),
      ),
    );
  }
}
