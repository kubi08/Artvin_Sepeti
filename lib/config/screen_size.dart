import 'package:flutter/material.dart';

    screenSize({BuildContext context,double totalHeight,double width}) {
    double appBar=AppBar().preferredSize.height;
    width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    totalHeight=height-appBar;

  }

