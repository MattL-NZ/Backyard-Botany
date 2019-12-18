import 'package:backyard_botany/core/utils/bottom_nav.dart';
import 'package:backyard_botany/core/utils/locator.dart';
import 'package:backyard_botany/core/utils/router.dart';
import 'package:backyard_botany/ui/views/home_view.dart';
import 'package:backyard_botany/ui/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BottomNavBarProvider>(
          create: (context) => locator<BottomNavBarProvider>(),
        ),
      ],
      child: MaterialApp(
        title: 'Plantr',
        initialRoute: 'login',
        onGenerateRoute: Router.generateRoute,
      ),
    );
  }
}

