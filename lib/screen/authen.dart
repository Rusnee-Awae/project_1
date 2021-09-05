import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_minipro/utility/dialog.dart';
import 'package:flutter_minipro/utility/my_style.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}
class _AuthenState extends State<Authen> {
  double screen;
  bool statusRedEye = true;
  String user,password;
  @override
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size.width;
    print('screen = $screen');
    return Scaffold(
      floatingActionButton: buildRegister(),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(center: Alignment(0, -0.33),
              radius: 1.0,
              colors: <Color>[Colors.white,MyStyle().primaryColor]
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildlogo(),
                MyStyle().titleH1('love'),
                buildUser(),
                buildPassword(),
                buildlogin(),
                showText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Container showText(){
    return Container(margin: EdgeInsets.only(top:146),
      child: Text('Do not have an account?',style: TextStyle(color: Colors.white)),);
  }
  ElevatedButton buildRegister() => ElevatedButton(
    onPressed: () => Navigator.pushNamed(context, '/register'),
    child: Text(
      'Sign Up' ,
      style: TextStyle(color: Colors.white,),
    ),
  );
  Container buildlogin() {
    return Container
      (margin: EdgeInsets.only(top:16),
      width: screen*0.75,
      child: ElevatedButton(
        onPressed: (){
          if((user?.isEmpty??true) || (password?.isEmpty??true)){
            normalDialog(context, 'Have Space ? Please Fill Every Blank');
          }else{
            checkAuthen();
          }
        },
        child: Text('Login'),
        style: ElevatedButton.styleFrom(primary: MyStyle().dartColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)
          ),
        ),
      ),
    );
  }
  Container buildUser() {
    return Container(
      decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white54
      ) ,
      margin: EdgeInsets.only(top: 16),
      width: screen * 0.75,
      child: TextField(keyboardType: TextInputType.emailAddress,
        onChanged: (value) => user = value.trim() ,
        style: TextStyle(color: MyStyle().dartColor),
        decoration: InputDecoration(
          hintStyle: TextStyle(color: MyStyle().dartColor),
          hintText: 'Email :',
          prefixIcon: Icon(Icons.perm_identity, color: MyStyle().dartColor),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyStyle().dartColor),
            borderRadius: BorderRadius.circular(20),

          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyStyle().dartColor),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
  Container buildPassword() {
    return Container(
      decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white54
      ) ,
      margin: EdgeInsets.only(top: 16),
      width: screen * 0.75,
      child: TextField(
        onChanged: (value) => password = value.trim(),
        obscureText: statusRedEye,
        style: TextStyle(color: MyStyle().dartColor),
        decoration: InputDecoration(suffixIcon:
        (IconButton(
            icon: statusRedEye ? Icon(Icons.remove_red_eye) :
            Icon(Icons.remove_red_eye_outlined),
            onPressed: (){
              setState(() {
                statusRedEye = !statusRedEye;
              });
              print('statusRedEye = $statusRedEye');
            })),
          hintStyle: TextStyle(color: MyStyle().dartColor),
          hintText: 'Password :',
          prefixIcon: Icon(Icons.lock_outline, color: MyStyle().dartColor),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyStyle().dartColor),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyStyle().dartColor),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
  Container buildlogo() {
    return Container(
        width: screen * 1.0,
        child: MyStyle().showLogo()
    );
  }
  Future<Null> checkAuthen() async{
    await Firebase.initializeApp().then((value) async {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email:user, password: password)
          .then((value) => Navigator.pushNamedAndRemoveUntil(context, '/MyService', (route) =>
      false))
          .catchError((value) => normalDialog(context, value.message));
    });
  }
}
