import 'package:artvin_sepeti/components/already_have_an_account_acheck.dart';
import 'package:artvin_sepeti/components/rounded_button.dart';
import 'package:artvin_sepeti/components/rounded_input_field.dart';
import 'package:artvin_sepeti/components/rounded_password_field.dart';
import 'package:artvin_sepeti/config/colors.dart';
import 'package:artvin_sepeti/pages/Login/components/background.dart';
import 'package:artvin_sepeti/pages/Signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            Text("artvin",style: TextStyle(fontFamily: 'mainFont',fontSize:size.width * 0.25,color:primaryColor),),
            Text("sepeti",style: TextStyle(fontFamily: 'secondFont',fontSize:size.width * 0.15,color:primaryColor,height: 0.8),),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "GİRİŞ YAP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
