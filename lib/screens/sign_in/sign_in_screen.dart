import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_shop_demo/screens/sign_in/components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName ="/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In',),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
