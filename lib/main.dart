import 'package:flutter/material.dart';
import 'package:flutter_app_shop_demo/constants.dart';
import 'package:flutter_app_shop_demo/routes.dart';
import 'package:flutter_app_shop_demo/screens/splash/splash_screen.dart';
import 'package:flutter_app_shop_demo/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      //home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}


