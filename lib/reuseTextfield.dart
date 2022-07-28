import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textfield extends StatefulWidget {
  final  hintText;
  const Textfield({this.hintText }) ;

  @override
  _TextfieldState createState() => _TextfieldState();
}

class _TextfieldState extends State<Textfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _buildTextField(widget.hintText)
        ],
      ),
    );
  }

  Widget _buildTextField(String hintText){// add other properties here}) { // new
  return Container(
  //Type TextField
  width: 50,
  height: 20,
  color: Colors.blue,
  child: TextField(
  decoration: InputDecoration(
  contentPadding: EdgeInsets.all(10.0),
  enabledBorder: UnderlineInputBorder(
  borderSide: BorderSide(color: Colors.white),
  ),
  hintText: hintText, // pass the hint text parameter here
  hintStyle: TextStyle(color: Colors.blue),
  ),
  style: TextStyle(color: Colors.black),
  ),
  );
}
}
