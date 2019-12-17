import 'package:backyard_botany/core/utils/locator.dart';
import 'package:backyard_botany/ui/views/login_view.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: LoginView(),
    );
  }
}

