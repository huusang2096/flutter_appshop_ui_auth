import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_shop_demo/components/custom_surfix_icon.dart';
import 'package:flutter_app_shop_demo/components/default_button.dart';
import 'package:flutter_app_shop_demo/components/form_error.dart';
import 'package:flutter_app_shop_demo/components/no_account_text.dart';
import 'package:flutter_app_shop_demo/components/social_card.dart';
import 'package:flutter_app_shop_demo/constants.dart';
import 'package:flutter_app_shop_demo/screens/sign_in/components/sign_form.dart';
import 'package:flutter_app_shop_demo/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: SizeConfig.screenHeight*0.04,),
                Text("Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with your email and password \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight*0.08,),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight*0.08,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children :<Widget>[
                    SocialCart(
                      icon: "assets/icons/google-icon.svg",
                      press: (){},
                    ),
                    SocialCart(
                      icon: "assets/icons/facebook-2.svg",
                      press: (){},
                    ),
                    SocialCart(
                      icon: "assets/icons/twitter.svg",
                      press: (){},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20),),
                NoAccount(),
                SizedBox(height: getProportionateScreenHeight(40),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}







