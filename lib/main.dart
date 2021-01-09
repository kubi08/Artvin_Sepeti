import 'package:artvin_sepeti/config/colors.dart';
import 'package:artvin_sepeti/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Artvin Sepeti',
      theme: ThemeData(
        primaryColor:primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:SplashPage(),
    );
  }
}


