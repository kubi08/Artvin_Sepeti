import 'package:artvin_sepeti/config/colors.dart';
import 'package:artvin_sepeti/config/export_config.dart';
import 'package:flutter/material.dart';

class AppBarPage extends StatefulWidget {
  @override
  _AppBarPageState createState() => _AppBarPageState();
}

class _AppBarPageState extends State<AppBarPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          Icon(Icons.menu,size: 30,color: primaryColor,),
          Text("artvin sepeti",style: TextStyle(color: primaryColor,fontFamily: 'secondFont',fontSize: 30),),
          Icon(Icons.shopping_cart_outlined,size: 30,color: primaryColor,)
        ],
      );


  }
}

