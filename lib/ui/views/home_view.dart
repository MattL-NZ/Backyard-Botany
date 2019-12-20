import 'package:backyard_botany/core/utils/bottom_nav.dart';
import 'package:backyard_botany/ui/shared/app_colors.dart';
import 'package:backyard_botany/ui/shared/spacers.dart';
import 'package:backyard_botany/ui/views/discover_view.dart';
import 'package:backyard_botany/ui/views/settings_view.dart';
import 'package:backyard_botany/ui/widgets/home_buttons.dart';
import 'package:backyard_botany/ui/widgets/search_box.dart';
import 'package:backyard_botany/ui/widgets/section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        onTap: (index) {
          provider.currentIndex = index;
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            title: Text('HOME'),
            activeIcon: Icon(Icons.home, color: accentColor, size: 30)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image, size: 30),
            title: Text('DISCOVER'),
            activeIcon: Icon(Icons.image, size: 30, color: accentColor,),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30,),
            title: Text('PROFILE'),
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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: homeBackgroundColor,
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  // App Bar -->
                  Container(
                    height: MediaQuery.of(context).size.height /4.5,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          appBarGradient1,
                          appBarGradient2
                        ]
                      )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 24.0),
                              child: Text(
                                'Hello, Matt',
                                style: TextStyle(
                                  fontFamily: 'SF-Pro-Bold',
                                  color: Colors.white,
                                  fontSize: 25.0
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 24.0,),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage('https://image.freepik.com/free-photo/smiling-confident-businesswoman-posing-with-arms-folded_1262-20950.jpg'),
                              )
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 24.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Learn more about plants",
                              style: TextStyle(
                                color: Colors.white70,
                                fontFamily: 'SF-Pro-Regular',
                                fontSize: 18
                              ),
                            )
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 85.0),
                child: CustomSearchBox(),
              ),
              // App Bar <--
            ],
          ),
          Spacers.verticalSpace(40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              HomeButtons(
                isPrimaryButton: true,
                buttonIcon: Icons.camera_alt,
                buttonText: "Identify",
              ),
              HomeButtons(
                isPrimaryButton: false,
                buttonIcon: Icons.border_bottom,
                buttonText: "Species",
              ),
              HomeButtons(
                isPrimaryButton: false,
                buttonIcon: Icons.book,
                buttonText: "Articles",
              )
            ],
          ),
          Spacers.verticalSpaceMedium(),
          SectionTitle(
            title: 'Plant Types',
          ),
        ],
      )
    );
  }
}