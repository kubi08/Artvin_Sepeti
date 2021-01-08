import 'package:artvin_sepeti/config/export_config.dart';
import 'package:artvin_sepeti/pages/promotion_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    splashDelayed().then((value) {
      if (value) {
        promotionPageRoute();
      } else {
        splashDelayed();
      }
    });
  }

  Future<bool> splashDelayed() async {
    await Future.delayed(Duration(seconds: 55));
    return true;
  }

  void promotionPageRoute() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => PromotionPage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(Strings.splashPageBottomText,
              style: TextStyle(fontSize:30 ),
              ),
              alignment: Alignment.bottomCenter,
            ),
            Container(
              child: Text(Strings.splashPageTopText,
                style: TextStyle(fontSize:30 ),
              ),
              alignment: Alignment.topCenter,
            )
          ],
        ),
      ),
    );
  }
}
