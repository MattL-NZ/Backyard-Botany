import 'package:backyard_botany/core/utils/bottom_nav.dart';
import 'package:backyard_botany/core/view_models/home_view_model.dart';
import 'package:backyard_botany/ui/views/base_view.dart';
import 'package:backyard_botany/ui/views/discover_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
 @override
  Widget build(BuildContext context) {

    var provider = Provider.of<BottomNavBarProvider>(context);
    return BaseView<HomeViewModel>(
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.green,
          body: Container(
            child: Center(
              child: Text(
                'HOME'
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: provider.currentIndex,
            onTap: (index) {
              provider.currentIndex = index;
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Home")
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.new_releases),
                title: Text("Discover")
              )
            ]
          ),
      ),
    );
  }
}