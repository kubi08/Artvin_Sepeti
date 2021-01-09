import 'package:artvin_sepeti/components/text_field_container.dart';
import 'package:artvin_sepeti/config/colors.dart';
import 'package:flutter/material.dart';
class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor:whiteColor,
        decoration: InputDecoration(
          hintText: "Şifre",
          icon: Icon(
            Icons.lock,
            color: primaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: primaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
