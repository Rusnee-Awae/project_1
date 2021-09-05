import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class MyStyle {
  Color dartColor = Colors.purple.shade900;
  Color primaryColor = Colors.white;
  SizedBox mySizebox() => SizedBox(
        width: 8.0,
        height: 16.0,
      );
  Text showTitle(String title) => Text(
        title,
        style: TextStyle(
            fontSize: 24.0,
            color: Colors.purple.shade900,
            fontWeight: FontWeight.bold),
      );

  Container showLogo() {
    return Container(
      width: 400.0,
      child: Image.asset('images/my.png'),
    );
  }
  Widget show() {
    return Image.asset('images/jan.png');
  }
  Widget titleH1(String string) =>
      Text(string,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.pink,
        ),
      );

  MyStyle();


}
