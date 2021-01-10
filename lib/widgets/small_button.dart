import 'package:artvin_sepeti/config/export_config.dart';
import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {

  final String btnText;

  SmallButton({this.btnText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.0,
      width: 100.0,
      decoration: BoxDecoration(
          border: Border.all(
            color: primaryColor,
          ),
          borderRadius: BorderRadius.circular(20.0)),
      child: Center(
        child: Text(
          "$btnText",
          style: TextStyle(color:primaryColor, fontSize: 16.0),
        ),
      ),
    );
  }
}