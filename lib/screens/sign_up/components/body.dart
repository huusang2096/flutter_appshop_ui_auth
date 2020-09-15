import 'package:flutter/material.dart';
import 'package:flutter_app_shop_demo/components/custom_surfix_icon.dart';
import 'package:flutter_app_shop_demo/components/default_button.dart';
import 'package:flutter_app_shop_demo/components/form_error.dart';
import 'package:flutter_app_shop_demo/components/social_card.dart';
import 'package:flutter_app_shop_demo/constants.dart';
import 'package:flutter_app_shop_demo/screens/sign_up/components/sign_up_form.dart';
import 'package:flutter_app_shop_demo/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: SizeConfig.screenHeight*0.02,),
              Text(
                "Register Account",
                style: headingStyle,
              ),
              Text(
                "Complete your details or continue with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight*0.07,),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight*0.07,),
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
              Text(
                "By continuing your confirm that you agree \nwith our Term and Condition",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getProportionateScreenHeight(20),),
            ],
          ),
        ),
      ),
    );
  }
}

