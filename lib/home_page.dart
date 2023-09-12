import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/text_button.dart';

import 'portfolio_body.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Color backColor=Colors.black54;
    Color txtColor=Colors.white70;
    return Scaffold(
      backgroundColor:backColor,
      appBar: AppBar(
        backgroundColor:backColor,
        title:Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor:backColor,
              foregroundImage:AssetImage("assets/image/profile_pic.png",),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 4.0),
              child: Text("Md Mannan Hossain Nayeem",style: TextStyle(
                color: txtColor,
                fontWeight: FontWeight.bold,
              ),),
            )
          ],
        ),
        actions: [
          Row(
            children: [
              TextBttn(bttnName: "Home", bttnPage: HomePage()),
              TextBttn(bttnName: "Contact Me", bttnPage: HomePage()),
              TextBttn(bttnName: "About Me", bttnPage: DummyPage()),

            ],
          )
        ],
      ),
        body: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.deepOrange,
              width: .7,
            ),
          ),
          child: BodyPart(),
        ),
    );
  }
  DummyPage(){

  }
}
