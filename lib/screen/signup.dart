import 'package:flutter/material.dart';
import 'package:flutter_minipro/utility/my_style.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          MyStyle().showLogo(),
          MyStyle().mySizebox(),
          showAppName(),
          MyStyle().mySizebox(),
          usernameForm(),
          MyStyle().mySizebox(),
          emailForm(),
          MyStyle().mySizebox(),
          phoneForm(),
          MyStyle().mySizebox(),
          passwordForm(),
          MyStyle().mySizebox(),
          repasswordForm(),
          MyStyle().mySizebox(),
          registerButton(),
        ],
      ),
    );
  }

  Widget registerButton() => Container(
      width: 250.0,
      // ignore: deprecated_member_use
      child: RaisedButton(
        color: MyStyle().dartColor,
        onPressed: () {},
        child: Text(
          'Submit',
          style: TextStyle(color: Colors.white),
        ),
      ));

  Widget usernameForm() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 250.0,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.face,
                  color: MyStyle().dartColor,
                ),
                labelStyle: TextStyle(color: MyStyle().dartColor),
                labelText: 'Username',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().dartColor)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().primaryColor)),
              ),
            ),
          ),
        ],
      );

  Widget emailForm() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 250.0,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email,
                  color: MyStyle().dartColor,
                ),
                labelStyle: TextStyle(color: MyStyle().dartColor),
                labelText: 'E-mail',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().dartColor)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().primaryColor)),
              ),
            ),
          ),
        ],
      );

  Widget phoneForm() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 250.0,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.call,
                  color: MyStyle().dartColor,
                ),
                labelStyle: TextStyle(color: MyStyle().dartColor),
                labelText: 'Phone',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().dartColor)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().primaryColor)),
              ),
            ),
          ),
        ],
      );

  Widget passwordForm() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 250.0,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: MyStyle().dartColor,
                ),
                labelStyle: TextStyle(color: MyStyle().dartColor),
                labelText: 'Password',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().dartColor)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().primaryColor)),
              ),
            ),
          ),
        ],
      );

  Widget repasswordForm() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 250.0,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: MyStyle().dartColor,
                ),
                labelStyle: TextStyle(color: MyStyle().dartColor),
                labelText: 'Re-Password',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().dartColor)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().primaryColor)),
              ),
            ),
          ),
        ],
      );

  Row showAppName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyStyle().showTitle('Register'),
      ],
    );
  }
}
