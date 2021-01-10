import 'package:artvin_sepeti/config/colors.dart';
import 'package:artvin_sepeti/config/images_path.dart';
import 'package:flutter/material.dart';

class BoughtFood extends StatefulWidget {
  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double ratings;

  BoughtFood({
        this.id,
        this.name,
        this.imagePath,
        this.category,
        this.price,
        this.discount,
        this.ratings});

  @override
  _BoughtFoodState createState() => _BoughtFoodState();
}

class _BoughtFoodState extends State<BoughtFood> {
  var cardText = TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            height: 200.0,
            width: 340.0,
            child: Image.asset(widget.imagePath, fit: BoxFit.contain),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            width: 340.0,
            height: 60.0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [primaryColor, primaryColor.withOpacity(0.05)],
                ),
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            right: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                     widget.name,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star, color:whiteColor, size: 16.0),
                        Icon(Icons.star, color: whiteColor, size: 16.0),
                        Icon(Icons.star, color: whiteColor, size: 16.0),
                        Icon(Icons.star, color: whiteColor, size: 16.0),
                        Icon(Icons.star, color: whiteColor, size: 16.0),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "("+widget.ratings.toString() +"Puan",
                          style: TextStyle(color: whiteColor),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                     widget.price.toString(),
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: whiteColor),
                    ),
                    Text("Min. Sipariş", style: TextStyle(color: whiteColor))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}