import 'package:flutter/material.dart';
import 'package:flutter_app_shop_demo/screens/splash/components/body.dart';
import 'package:flutter_app_shop_demo/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
