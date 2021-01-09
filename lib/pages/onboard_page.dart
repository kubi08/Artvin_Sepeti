import 'package:artvin_sepeti/model/onboard_model.dart';
import 'package:artvin_sepeti/pages/export_page.dart';
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
      body: Column(
        children: <Widget>[
          _appBar(),
          _body(_controller),
          _indicator(),
        ],
      ),
    );
  }

  _appBar() {
    return Container(
      color: Colors.white30,
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              if (initialPage > 0)
                _controller.animateToPage(initialPage - 1,
                    duration: Duration(microseconds: 100),
                    curve: Curves.easeIn);
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.grey.shade700,
              ),
            ),
          ),
          Text(
            "Yardım Ekranı",
            style: TextStyle(
                fontSize: 20, color: Colors.red, fontWeight: FontWeight.w400),
          ),
          FlatButton(
            onPressed: () {
              if (initialPage < list.length)
                _controller.animateToPage(list.length,
                    duration: Duration(microseconds: 100),
                    curve: Curves.easeInOut);
            },
          ),
          Container(
              width: 50,
              height: 50,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SplashPage()),
                  );
                },
                icon: Icon(
                  Icons.close,
                  color: Colors.grey.shade700,
                  size: 30,
                ),
              )),
        ],
      ),
    );
  }

  _body(PageController controller) {
    return Expanded(
      child: PageView.builder(
        controller: controller,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              index == 1
                  ? _displayText(list[index].text)
                  : _displayImage(list[index].id),
              SizedBox(
                height: 15,
              ),
              index == 1
                  ? _displayImage(list[index].id)
                  : _displayText(list[index].text),
            ],
          );
        },
      ),
    );
  }

  _indicator() {
    return Container(
      width: 90,
      height: 90,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 80,
              height: 80,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.red),
                value: (initialPage + 1) / (list.length + 1),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                if (initialPage < list.length)
                  _controller.animateToPage(initialPage + 1,
                      duration: Duration(microseconds: 100),
                      curve: Curves.easeIn);
              },
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(80),
                  ),
                ),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _displayText(String text) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.grey.shade700,
          fontSize: 18,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w600),
      textAlign: TextAlign.center,
    );
  }

  _displayImage(int path) {
    return Image.asset(
      "assets/images/$path.png",
      height: MediaQuery.of(context).size.height * .5,
    );
  }
}
