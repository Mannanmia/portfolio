import 'package:flutter/material.dart';
class TextBttn extends StatefulWidget {
  var bttnPage;
  String bttnName;
  IconData ? bttnIcon;
   TextBttn({Key? key,
     required this.bttnName,
     this.bttnIcon,
     required this.bttnPage,
   }) : super(key: key);

  @override
  State<TextBttn> createState() => _TextBttnState();
}

class _TextBttnState extends State<TextBttn> {
  @override
  Widget build(BuildContext context) {
    Color backColor=Colors.black54;
    Color txtcolor = Colors.white70;
    return TextButton.icon(
      icon: Icon(widget.bttnIcon,color: Colors.white70,),
      label:Text(widget.bttnName,style: TextStyle(
        color: txtcolor,
        fontWeight: FontWeight.bold,
      ),),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>widget.bttnPage));
      },
    );
  }
}
