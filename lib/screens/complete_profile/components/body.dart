import 'package:flutter/material.dart';
import 'package:flutter_app_shop_demo/components/custom_surfix_icon.dart';
import 'package:flutter_app_shop_demo/components/default_button.dart';
import 'package:flutter_app_shop_demo/components/form_error.dart';
import 'package:flutter_app_shop_demo/constants.dart';
import 'package:flutter_app_shop_demo/screens/complete_profile/components/complete_profile_form.dart';
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
                "Complete Profile",
                style: headingStyle,
              ),
              Text(
                "Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight*0.05,),
              CompleteProfileForm(),
              SizedBox(height: getProportionateScreenHeight(30),),
              Text(
                "By continuing your confirm that you argee \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getProportionateScreenHeight(40),),
            ],
          ),
        ),
      ),
    );
  }
}


