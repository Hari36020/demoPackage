import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textfield extends StatefulWidget {
  final  hintText;
  final hintColor;
  const Textfield({this.hintText,this.hintColor }) ;

  @override
  _TextfieldState createState() => _TextfieldState();
}

class _TextfieldState extends State<Textfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _buildTextField(widget.hintText,widget.hintColor)
        ],
      ),
    );
  }

  Widget _buildTextField(String hintText,Color hintColor){// add other properties here}) { // new
  return Container(
  //Type TextField
  width: 120,
  height: 50,
  color: Colors.white,
  child: TextField(
  decoration: InputDecoration(
  contentPadding: EdgeInsets.all(10.0),
  enabledBorder: UnderlineInputBorder(
  borderSide: BorderSide(color: Colors.red),
  ),
  hintText: hintText, // pass the hint text parameter here
  hintStyle: TextStyle(color: widget.hintColor),
  ),
  style: TextStyle(color: Colors.black),
  ),
  );
}
}
