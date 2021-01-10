import 'package:artvin_sepeti/data/category_data.dart';
import 'package:artvin_sepeti/model/category_model.dart';
import 'package:artvin_sepeti/widgets/food_card.dart';
import 'package:flutter/material.dart';

class FoodCategory extends StatelessWidget {
  final List<Category> _categories= categories;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index){
          return FoodCard(
            categoryName: _categories[index].categoryName,
            imagePath: _categories[index].imagePath,
            numberOfItems: _categories[index].numberOfItems,
          );
        },
      ),
    );
  }
}
