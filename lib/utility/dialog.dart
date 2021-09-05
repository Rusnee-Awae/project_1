import 'package:flutter/material.dart';
import 'package:flutter_minipro/utility/my_style.dart';
Future<Null> normalDialog(BuildContext context , String string) async{
  showDialog(
      context:context,
      builder: (context) => SimpleDialog(
        title: ListTile(
          leading: Image.asset('images/my.png'),
          title: Text('Normal Dialog'),
          subtitle: Text(string),
        ),
        children: [TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'))],
      ));
}