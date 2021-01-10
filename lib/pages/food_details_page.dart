import 'package:artvin_sepeti/config/colors.dart';
import 'package:artvin_sepeti/model/food_model.dart';
import 'package:artvin_sepeti/widgets/button.dart';
import 'package:flutter/material.dart';


class FoodDetailsPage extends StatelessWidget {

  final Food food;
  FoodDetailsPage({this.food,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(Icons.menu,size: 30,color: primaryColor,),
        title:  Text("artvin sepeti",style: TextStyle(color: primaryColor,fontFamily: 'secondFont',fontSize: 30),),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.shopping_cart_outlined,size: 30,color: primaryColor,),
          )
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 200.0,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/pizza.png",
                  fit: BoxFit.contain,
                ),
              ),
             SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Pizza",
                    style: TextStyle(fontSize: 18.0, color: primaryColor,fontFamily: 'secondFont'),
                  ),
                  Text(
                    "30 TL",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'secondFont',
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Açıklama",
                style: TextStyle(fontSize: 18.0, color: Colors.black,fontFamily: 'secondFont'),
              ),
              SizedBox(height: 10),
              Text(
                "Pizza, İtalyan mutfağında bir mayalı hamur işi. Üstüne birçok malzeme konulabilir."
                "Peynir, sosis, domates, salam, biber, zeytin, mısır gibi ana malzemeleri dışında birçok"
                 " değişik malzemenin konulduğu pizzalar da bulunmaktadır.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.add_circle), onPressed: null),
                  SizedBox(width: 15.0,),
                  Text("1", style: TextStyle(fontSize: 16.0,),),
                  SizedBox(width: 15.0,),
                  IconButton(icon: Icon(Icons.remove_circle), onPressed: null),
                ],
              ),
              SizedBox(height: 30),
              Button(
                btnText: "Karta Ekle",
              ),

            ],
          ),
        ),
      ),
    );
  }
}