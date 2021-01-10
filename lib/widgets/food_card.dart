import 'package:artvin_sepeti/config/colors.dart';
import 'package:artvin_sepeti/config/images_path.dart';
import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String categoryName;
  final String imagePath;
  final int numberOfItems;

  FoodCard({this.categoryName,this.imagePath,this.numberOfItems});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape:  RoundedRectangleBorder(
          side: new BorderSide(color: primaryColor, width: 0.5),
          borderRadius: BorderRadius.circular(5.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Row(children: [
          Image(image: AssetImage(imagePath),
          height: 65,
          width: 65,
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(categoryName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
              Text("$numberOfItems")
            ],
          )
        ],),
      ),
      
    );
  }
}
