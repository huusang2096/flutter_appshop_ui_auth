import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_shop_demo/components/default_button.dart';
import 'package:flutter_app_shop_demo/constants.dart';
import 'package:flutter_app_shop_demo/screens/otp/components/otp_form.dart';
import 'package:flutter_app_shop_demo/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: SizeConfig.screenHeight*0.05,),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              Text("We sent your code to +84 762 121 ***",),
              buildTimerRow(),
              SizedBox(height: SizeConfig.screenHeight*0.15,),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight*0.1,),
              GestureDetector(
                onTap: (){
                  //func resend otp >>here<<
                },
                child: Text(
                  "Resend OTP Code",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimerRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("This code will be expired in",),
          TweenAnimationBuilder(
            tween: Tween(begin: 30.0, end: 0),
            duration: Duration(seconds: 30),
            builder: (context,value,child) => Text(
              "00:${value.toInt()}",
              style: TextStyle(color: kPrimaryColor),
            ),
          ),
        ],
      );
  }
}

