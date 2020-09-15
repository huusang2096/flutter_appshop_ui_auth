import 'package:flutter/widgets.dart';
import 'package:flutter_app_shop_demo/screens/complete_profile/complete_profile_screen.dart';
import 'package:flutter_app_shop_demo/screens/forgot_pass/forgot_password.dart';
import 'package:flutter_app_shop_demo/screens/login_success/login_success.dart';
import 'package:flutter_app_shop_demo/screens/otp/otp_screen.dart';
import 'package:flutter_app_shop_demo/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_app_shop_demo/screens/sign_up/sign_up_screen.dart';
import 'package:flutter_app_shop_demo/screens/splash/splash_screen.dart';

//we use name route
//All our routes will be available here
final Map<String,WidgetBuilder> routes = {
  SplashScreen.routeName:(context) => SplashScreen(),
  SignInScreen.routeName:(context) => SignInScreen(),
  ForgotPasswordScreen.routeName:(context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
};