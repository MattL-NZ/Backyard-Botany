import 'package:backyard_botany/ui/views/home_view.dart';
import 'package:backyard_botany/ui/views/login_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeView());
      case 'home':
        return MaterialPageRoute(builder: (_) => HomeView());
      case 'login':
        return MaterialPageRoute(builder: (_) => LoginView());
      default:
        return MaterialPageRoute(builder:  (_) => Scaffold(
          body: Center(child: Text('No route found for ${settings.name}')),
        )
      );
    }
  }
}