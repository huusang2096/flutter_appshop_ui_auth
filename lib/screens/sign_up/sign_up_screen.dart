import 'package:flutter/material.dart';
import 'package:flutter_app_shop_demo/screens/sign_up/components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign Up",
        ),
      ),
      body: Body(),
    );
  }
}
