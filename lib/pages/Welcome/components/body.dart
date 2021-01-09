import 'package:artvin_sepeti/components/rounded_button.dart';
import 'package:artvin_sepeti/config/colors.dart';
import 'package:artvin_sepeti/pages/Login/login_screen.dart';
import 'package:artvin_sepeti/pages/Signup/signup_screen.dart';
import 'package:artvin_sepeti/pages/Welcome/components/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.05),
            Text("artvin",style: TextStyle(fontFamily: 'mainFont',fontSize:size.width * 0.25,color:primaryColor),),
            Text("sepeti",style: TextStyle(fontFamily: 'secondFont',fontSize:size.width * 0.15,color:primaryColor,height: 0.8),),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "GİRİŞ YAP",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "KAYIT OL",
              color: primaryColor,
              textColor: whiteColor,
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
