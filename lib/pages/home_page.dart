import 'package:artvin_sepeti/config/colors.dart';
import 'package:artvin_sepeti/widgets/app_bar.dart';
import 'package:artvin_sepeti/widgets/food_category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50,left: 20,right: 20),
          children:<Widget> [
            AppBarPage(),
            SizedBox(height: 20),
            FoodCategory()
          ],
          )
    );
  }
}
