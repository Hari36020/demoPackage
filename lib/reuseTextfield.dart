import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoxTextField extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final bool obsecure;
  final bool readOnly;
  final TextInputType keyboardType;
  final bool isMulti;
  final bool autofocus;
  final bool enabled;
  final String errorText;
  final String label;

  BoxTextField(
      {
        required this.controller,
        required this.validator,
        this.keyboardType = TextInputType.text,
        this.obsecure = false,
        this.isMulti = false,
        this.readOnly = false,
        this.autofocus = false,
        required this.errorText,
        required this.label,
        this.enabled = true,
        });


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: TextFormField(
          autofocus: autofocus,
          minLines: isMulti ? 4 : 1,
          maxLines: isMulti ? null : 1,
          enabled: enabled,
          readOnly: readOnly,
          obscureText: obsecure,
          keyboardType: keyboardType,
          controller: controller,
          decoration: InputDecoration(
            errorText: errorText,
            labelStyle: TextStyle(fontSize: 12),
            labelText: label,
            hintStyle: TextStyle(color: Colors.blueGrey, fontSize: 15),
            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                color: Colors.red,
                width: 2.0,
              ),
            ),
            border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                color: Colors.red,
              ),
            ),
          ),
          validator: validator),
    );
  }
}