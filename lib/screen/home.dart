import 'package:flutter/material.dart';
import 'package:flutter_minipro/screen/signin.dart';
import 'package:flutter_minipro/screen/signup.dart';
import 'package:flutter_minipro/utility/my_style.dart';
import 'package:flutter/cupertino.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: showDrawer(),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: <Color>[Colors.white, MyStyle().primaryColor],
            center: Alignment(0, -0.3),
            radius: 2.0,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                textTitle(),
                imageHome(),
                descriptionHome(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget textTitle() => Container(
      width: 300.0,
      // ignore: deprecated_member_use
      child: Text(
        'WelCome My Dental CIinic ',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.purple, fontSize: 25, fontWeight: FontWeight.bold)
      ),);

  //image
  Widget imageHome() => Container(
    width: 350.0,
    height: 350.0,
    // ignore: deprecated_member_use
    child: Image.asset('images/Home.jpg',width: 105,fit: BoxFit.cover,),
  );

  //description
  Widget descriptionHome() => Container(
    width: 370.0,
    // ignore: deprecated_member_use
    child: Text(
        'My Dental Clinic Budapest (Mammut Dental) is located in Hungary and is one of the most modern and innovative dental clinics in Budapest today. With staff that are trained in the latest techniques and procedures, and utilizing the most state-of-the-art equipment, machinery and technologies currently available in the field of dentistry, My Dental Clinic Budapest deliver outstanding services in a friendly and pleasant atmosphere.',
        textAlign: TextAlign.justify,
        style: TextStyle(color: Colors.purple,)
    ),);

  Drawer showDrawer() => Drawer(
        child: ListView(
          children: <Widget>[showHeadDrawer(), signInMenu(), signUpMenu()],
        ),
      );

  ListTile signInMenu() {
    return ListTile(
      leading: Icon(Icons.android),
      title: Text('Sing In'),
      onTap: () {
        Navigator.pop(context);
        MaterialPageRoute route =
            MaterialPageRoute(builder: (value) => SignIn());
        Navigator.push(context, route);
      },
    );
  }

  ListTile signUpMenu() {
    return ListTile(
      leading: Icon(Icons.android),
      title: Text('Sing Up'),
      onTap: () {
        Navigator.pop(context);
        MaterialPageRoute route =
            MaterialPageRoute(builder: (value) => SignUp());
        Navigator.push(context, route);
      },
    );
  }


  UserAccountsDrawerHeader showHeadDrawer() {
    return UserAccountsDrawerHeader(
        accountName: Text('Guest'), accountEmail: Text('Please Login'));
  }

}

