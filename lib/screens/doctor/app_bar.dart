import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
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
