import 'package:artvin_sepeti/pages/home_page.dart';
import 'package:flutter/material.dart';


class MainScreen extends StatefulWidget {


  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentTabIndex = 0;
  HomePage homePage;
  Widget currentPage;
  List<Widget> pages;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homePage=HomePage();
    pages= [homePage];
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
          BottomNavigationBarItem(icon:Icon(Icons.home), label: "Akış"),
          BottomNavigationBarItem(icon:Icon(Icons.shopping_cart), label: "Sipariş"),
          BottomNavigationBarItem(icon:Icon(Icons.favorite), label: "Favori"),
          BottomNavigationBarItem(icon:Icon(Icons.person), label: "Profil"),
        ],
      ),
    body: currentPage,
    );
  }


}