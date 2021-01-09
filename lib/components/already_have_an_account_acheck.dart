import 'package:artvin_sepeti/config/colors.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Hesabınız yok mu? " : "Zaten hesabım var?  ",
          style: TextStyle(color:primaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Kaydol" : "Giriş",
            style: TextStyle(
              color:primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
