import 'package:flutter/material.dart';

class BodyPart extends StatelessWidget {
  const BodyPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color backColor=Colors.black54;
    Color txtcolor = Colors.white70;
    double scrnHeight=MediaQuery.of(context).size.height;
    double scrnWidth=MediaQuery.of(context).size.width;
    return Container(
      color: backColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child:
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top:scrnHeight*.09),
                child: RichText(
                  text: TextSpan(
                      text: "WELCOME TO MY PORTFOLIO !",
                      style: TextStyle(
                        color: txtcolor,
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "\n\n\n\n\nI'm",
                          style: TextStyle(
                            color: txtcolor,
                            fontSize: 35,
                          ),
                        ),
                        TextSpan(
                          text: "\nMd Mannan Hossain",
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            color: txtcolor,
                            fontSize: 30,
                          ),
                        ),
                        TextSpan(
                          text: "\nNAYEEM",style: TextStyle(
                          fontSize: 30,
                          color: txtcolor,
                          fontWeight: FontWeight.w900,
                        ),),
                        TextSpan(
                          text: "\n\nFlutter Developer",
                          style: TextStyle(
                            color: txtcolor,
                          ),),
                      ]),
                ),
              ),
              SizedBox(
                width: scrnWidth*.4,
                height: scrnHeight*.05,
                child: Row(
                  children: [
                    Image.asset('assets/image/facebook_logo.png'),
                    Image.asset('assets/image/linkedin.png'),
                    Image.asset('assets/image/mail_logo.png'),
                    Image.asset('assets/image/github_logo.png'),
                  ],
                ),
              )
            ],

          ),),
          Expanded(
            child: Opacity(
                 opacity: .8,
                 child: Image.asset(
                   "assets/image/profile_pic.png",
                   fit: BoxFit.fill,
                 )),
          )
        ],
      ),
    );
  }
}
