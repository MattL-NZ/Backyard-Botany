import 'package:backyard_botany/core/utils/bottom_nav.dart';
import 'package:backyard_botany/ui/shared/app_colors.dart';
import 'package:backyard_botany/ui/views/discover_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() =>_HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var currentTab = [
    Home(),
    Discover(),
    Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavBarProvider>(context);
    return Scaffold(
      body: currentTab[provider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: provider.currentIndex,
        onTap: (index) {
          provider.currentIndex = index;
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            title: Text(''),
            activeIcon: Icon(Icons.home, color: accentColor, size: 30)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image, size: 30),
            title: Text(''),
            activeIcon: Icon(Icons.image, size: 30, color: accentColor,),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30,),
            title: Text(''),
            activeIcon: Icon(Icons.person, size: 30, color: accentColor,),
          ),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        alignment: Alignment.center,
        height: 300,
        width: 300,
        child: Text(
          "Home",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        color: Colors.amber,
      )),
    );
  }
}

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        alignment: Alignment.center,
        height: 300,
        width: 300,
        child: Text(
          "Settings",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        color: Colors.cyan,
      )),
    );
  }
}