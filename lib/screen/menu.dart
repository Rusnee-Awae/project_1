import 'package:flutter/material.dart';
import 'package:flutter_minipro/utility/my_style.dart';
import 'package:flutter_minipro/screen/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: <Color>[Colors.white, MyStyle().primaryColor],
            center: Alignment(0, -0.3),
            radius: 1.0,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                MyStyle().showLogo(),
                MyStyle().mySizebox(),
                MyStyle().showTitle(''),
                userForm(),
                MyStyle().mySizebox(),
                passwordForm(),
                MyStyle().mySizebox(),
                loginButton()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget loginButton() => Container(
      width: 250.0,
      // ignore: deprecated_member_use
      child: RaisedButton(
        color: MyStyle().dartColor,
        onPressed: () {},
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
      ));

  Widget userForm() => Container(
    width: 250.0,
    child: TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.account_box,
          color: MyStyle().dartColor,
        ),
        labelStyle: TextStyle(color: MyStyle().dartColor),
        labelText: 'username',
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyStyle().dartColor)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyStyle().primaryColor)),
      ),
    ),
  );

  Widget passwordForm() => Container(
    width: 250.0,
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.lock,
          color: MyStyle().dartColor,
        ),
        labelStyle: TextStyle(color: MyStyle().dartColor),
        labelText: 'password',
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyStyle().dartColor)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyStyle().primaryColor)),
      ),
    ),
  );
}
