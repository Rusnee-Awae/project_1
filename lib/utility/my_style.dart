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

  MyStyle();


}
