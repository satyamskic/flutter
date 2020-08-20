import 'package:flutter/material.dart';

// ignore: camel_case_types
class notification extends StatefulWidget {
  @override
  _notificationState createState() => _notificationState();
}

// ignore: camel_case_types
class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Notification'),
          automaticallyImplyLeading: true,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: ()=> {Navigator.pop(context,false) }),

        ),
      ),
    );
  }
}