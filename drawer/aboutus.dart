import 'package:flutter/material.dart';

// ignore: camel_case_types
class aboutus extends StatefulWidget {
  @override
  _aboutusState createState() => _aboutusState();
}

// ignore: camel_case_types
class _aboutusState extends State<aboutus> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('About us'),
          automaticallyImplyLeading: true,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: ()=> {Navigator.pop(context,false) }),

        ),
      ),
    );
  }
}
