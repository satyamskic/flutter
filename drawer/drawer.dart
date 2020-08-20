import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/notification.dart';

import 'aboutus.dart';
import 'profile.dart';
import 'settings.dart';


class Mydrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
       child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
                Colors.blue,
                Colors.lightBlue[50],
               // Colors.white,
                
              ] ),
            ),
            child: Container(
              child: Column(children: <Widget>[
                Material(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  elevation: 20,
                  child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Image.asset('images/docker.jpeg',width: 100,height:100),
                  ),
                ),
              ],)
            ),
            
            ),
          
          CustomListTile(Icons.home,'Home',()=>{
          Navigator.of(context).pop(),  
          }),
         
          
          CustomListTile(Icons.person,'Profile',()=>{

            Navigator.of(context).push(
             MaterialPageRoute(
               builder: (context) => profile(),
             ),
            ),
            
          }),
         
          CustomListTile(Icons.notifications,'Notification',()=>{
             Navigator.of(context).push(
             MaterialPageRoute(
               builder: (context) => notification(),
             ),
            ),
          }),
         
          CustomListTile(Icons.settings,'Settings',()=>{
             Navigator.of(context).push(
             MaterialPageRoute(
               builder: (context) => settings(),
             ),
            ),
          }),
          
          CustomListTile(Icons.rate_review,'About us',()=>{
             Navigator.of(context).push(
             MaterialPageRoute(
               builder: (context) => aboutus(),
             ),
            ),
          }),

         
         CustomListTile(Icons.lock,'Exit',()=>{
           exit(0),
          }),

        ],
       ),


    );
  }
}




// ignore: must_be_immutable
class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;
 CustomListTile(this.icon,this.text,this.onTap);
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey),

          ),
        ),
        child: InkWell(
          splashColor: Colors.grey,
          onTap: onTap,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
               Row(
                 children: <Widget>[
                   Icon(icon),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text(text,
                     style: TextStyle(fontSize: 16.0),               
                     ),
                   ),
                 ],
               ),
               Icon(Icons.arrow_right)
              ],
            ),
          ),
          
        ),
      ),
    );
  }
}