import 'package:artvin_sepeti/pages/home_page.dart';
import 'package:artvin_sepeti/pages/order_page.dart';
import 'package:artvin_sepeti/pages/profile_page.dart';
import 'package:flutter/material.dart';


class MainScreen extends StatefulWidget {


  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentTabIndex = 0;
  HomePage homePage;
  OrderPage orderPage;
  ProfilePage profilePage;
  Widget currentPage;
  List<Widget> pages;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homePage=HomePage();
    orderPage=OrderPage();
    profilePage=ProfilePage();
    pages= [homePage,orderPage,profilePage];
    currentPage =homePage;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            currentTabIndex=index;
            currentPage=pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items:<BottomNavigationBarItem> [
          BottomNavigationBarItem(icon:Icon(Icons.home_outlined), label: "Akış"),
          BottomNavigationBarItem(icon:Icon(Icons.shopping_cart_outlined), label: "Sipariş"),
          BottomNavigationBarItem(icon:Icon(Icons.favorite_border_outlined), label: "Favori"),
          BottomNavigationBarItem(icon:Icon(Icons.person_outlined), label: "Profil"),
        ],
      ),
    body: currentPage,
    );
  }


}