import 'package:artvin_sepeti/config/colors.dart';
import 'package:artvin_sepeti/model/onboard_model.dart';
import 'package:artvin_sepeti/pages/splash_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardPage extends StatefulWidget {
  @override
  _OnBoardPageState createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  List<OnBoardModel> list = OnBoardModel.list;
  var _controller = PageController();
  var initialPage = 0;

  @override
  Widget build(BuildContext context) {
    _controller.addListener(() {
      setState(() {
        initialPage = _controller.page.round();
      });
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsCode.primaryColor,
        automaticallyImplyLeading: false,
        elevation: 3.5,
        actions: [
          Container(
              width: 80,
              height: 80,
              child: FlatButton(
                child: Text("ATLA",style: TextStyle(color: ColorsCode.whiteColor,fontFamily:'secondFont',fontSize: 15),),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SplashPage()),
                  );
                },

              )),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(left: 15,right: 15),
        child: Column(

          children: <Widget>[
        Expanded(
        child: PageView.builder(
          controller: _controller,
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                _displayImage(list[index].id),
                SizedBox(height: 15),
                _displayText(list[index].text),

              ],
            );
          },
        ),
    ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.symmetric(vertical: 15),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 60,
                    height: 60,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(ColorsCode.primaryColor),
                      value: (initialPage) / (list.length-1),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      if (initialPage < list.length)
                        _controller.animateToPage(initialPage + 1,
                            duration: Duration(microseconds: 10),
                            curve: Curves.easeIn);
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: ColorsCode.primaryColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(80),
                        ),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: ColorsCode.whiteColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
          ],
        ),
      ),
    );
  }
  _displayText(String text) {
    return Text(
      text,
      style: TextStyle(
          color: ColorsCode.primaryColor,
          fontSize: 20,
          fontFamily: 'secondFont'),
      textAlign: TextAlign.center,
    );
  }
  _displayImage(int path) {
    return Image.asset(
      "assets/images/$path.png",
      height: MediaQuery.of(context).size.height * 0.6,
    );
  }
}
