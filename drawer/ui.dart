import 'package:flutter/material.dart';
import 'drawer.dart';

ui()
{
var myhome = Scaffold(

 appBar: AppBar(
  title: Text('Docker app'),
  backgroundColor: Colors.blue,
 ),
 drawer:  Mydrawer(),
);


var design = MaterialApp(
  home: myhome, 
  debugShowCheckedModeBanner: false,
  );
  return design;
}

