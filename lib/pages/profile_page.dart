import 'package:artvin_sepeti/config/colors.dart';
import 'package:artvin_sepeti/widgets/custom_list_tile.dart';
import 'package:artvin_sepeti/widgets/small_button.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool turnOnNotification = false;
  bool turnOnLocation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,
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
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60.0),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 1.0,
                                offset: Offset(0, 1.0),
                                color: Colors.black38),
                          ],
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/profil.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Kubilay BEŞLİ",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "kubilay_besli@hotmail.com",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          SmallButton(btnText: "Düzenle"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "Hesap Ayarları",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: primaryColor
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Card(
                    elevation: 2.0,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          CustomListTile(
                            icon: Icons.location_on,
                            text: "Adres",
                          ),
                          Divider(
                            height: 15.0,
                            color: Colors.grey,
                          ),
                          CustomListTile(
                            icon: Icons.visibility,
                            text: "Şifre Değiştir",
                          ),
                          Divider(
                            height: 15.0,
                            color: Colors.grey,
                          ),
                          CustomListTile(
                            icon: Icons.shopping_cart,
                            text: "Siparişler",
                          ),
                          Divider(
                            height: 15.0,
                            color: Colors.grey,
                          ),
                          CustomListTile(
                            icon: Icons.payment,
                            text: "Ödemeler",
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    "Bildirimler",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Card(
                    elevation: 3.0,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Uygulama Bildirimleri",
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              Switch(
                                value: turnOnNotification,
                                onChanged: (bool value) {
                                  // print("The value: $value");
                                  setState(() {
                                    turnOnNotification = value;
                                  });
                                },
                              ),
                            ],
                          ),
                          Divider(
                            height: 15.0,
                            color: Colors.grey,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Konum Takibi",
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              Switch(
                                value: turnOnLocation,
                                onChanged: (bool value) {
                                  // print("The value: $value");
                                  setState(() {
                                    turnOnLocation = value;
                                  });
                                },
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "Diğer",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Dil", style: TextStyle(fontSize: 16.0)),
                            // SizedBox(height: 10.0,),
                            Divider(
                              height: 30.0,
                              color: Colors.grey,
                            ),
                            Text("Para Birimi", style: TextStyle(fontSize: 16.0)),
                            // SizedBox(height: 10.0,),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );


  }
}