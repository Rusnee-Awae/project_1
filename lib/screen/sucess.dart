import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_minipro/utility/my_style.dart';
import 'package:flutter_minipro/screen//authen.dart';
class SuccessPage extends StatefulWidget {
  @override
  _SuccessPageState createState() => _SuccessPageState();
}
class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: buildBackbtn(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage("images/Home.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // ignore: missing_required_param
                      IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )),
                      // ignore: missing_required_param
                      IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Kathu&Thaland, Phuket",
                            style: TextStyle(
                                color: Colors.white,
                                backgroundColor: Colors.grey,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.lightBlue,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.lightBlue,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.lightBlue,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.lightBlue,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.lightBlue,
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Center(
                          child: Icon(
                            Icons.favorite,
                            color: Colors.redAccent,
                            size: 35,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 200,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Done!, Tasty food, Your Way!",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  ElevatedButton buildBackbtn() => ElevatedButton(
    onPressed: () => Navigator.pushNamed(context, '/sigup'),
    child: Text(
      'Exit' ,
      style: TextStyle(color: Colors.white,),
    ),
  );
}