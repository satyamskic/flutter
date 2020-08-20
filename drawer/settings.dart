import 'package:flutter/material.dart';

// ignore: camel_case_types
class settings extends StatefulWidget {
  @override
  _settingsState createState() => _settingsState();
}

// ignore: camel_case_types
class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
          automaticallyImplyLeading: true,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: ()=> {Navigator.pop(context,false) }),

        ),
      ),
    );
  }
}