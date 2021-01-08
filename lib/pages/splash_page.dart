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
    await Future.delayed(Duration(seconds: 1155));
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
    double appBar=AppBar().preferredSize.height;
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    double totalHeight=height-appBar;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: width,
                color: ColorsCode.primaryColor,
                child: Text(Strings.splashPageBottomText,
                style: TextStyle(fontSize:totalHeight*0.30,fontFamily: 'mainFont',color: ColorsCode.whiteColor,height: -3),
                ),
                alignment: Alignment.bottomCenter,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: width,
                child: Text(Strings.splashPageTopText,
                  style: TextStyle(fontSize:totalHeight*0.15,fontFamily:'secondFont',color: ColorsCode.primaryColor),
                ),
                alignment: Alignment.topCenter,
              ),
            )
          ],
        ),
      ),
    );
  }
}
