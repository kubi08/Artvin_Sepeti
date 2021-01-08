import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("artvin sepeti"),
        actions: [
           IconButton(icon: Icon(Icons.shopping_cart_outlined), onPressed: null)
        ],
      )
    );
  }
}
