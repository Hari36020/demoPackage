import 'package:flutter/material.dart';

class BoxButton extends StatelessWidget {

  final Widget child;
  final  onPressed;

  BoxButton({
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Ink(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient:  LinearGradient(
            colors: [
              Colors.teal[600]!.withOpacity(0.8),
              Colors.green[500]!.withOpacity(0.8),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child:
        Container(
            constraints: BoxConstraints(
                maxWidth: 200.0,
                minHeight: 50.0),
            alignment: Alignment.center,
            child: child
        ),
      ),
      splashColor: Colors.black12,
      padding: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(32.0),
      ),
    );
  }
}