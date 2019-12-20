import 'package:backyard_botany/ui/views/home_view.dart';
import 'package:backyard_botany/ui/views/login_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return PageTransition(type: PageTransitionType.fade, child: HomeView());
      case 'home':
        return PageTransition(type: PageTransitionType.fade, child: HomeView());
      case 'login':
        return PageTransition(type: PageTransitionType.fade, child: LoginView());
      default:
        return MaterialPageRoute(builder:  (_) => Scaffold(
          body: Center(child: Text('No route found for ${settings.name}')),
        )
      );
    }
  }
}