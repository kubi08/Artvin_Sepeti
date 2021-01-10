import 'package:artvin_sepeti/config/colors.dart';
import 'package:artvin_sepeti/config/export_config.dart';
import 'package:artvin_sepeti/config/images_path.dart';
import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 2,
        title: Row(
          children: [
            Image.asset(appBarLogo,height: 30,width: 30,),
            Text(splashPageTopText,  style: TextStyle(color: primaryColor,fontFamily: 'secondFont',fontSize: 20),),
            Text(splashPageBottomText,style: TextStyle(color: primaryColor,fontFamily: 'secondFont',fontSize: 20)),
          ],
        ),
        actions: [
           IconButton(icon: Icon(Icons.shopping_cart,color: primaryColor,), onPressed: null),
        ],
      )
    );
  }
}
