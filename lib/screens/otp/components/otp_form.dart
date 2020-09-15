import 'package:flutter/material.dart';
import 'package:flutter_app_shop_demo/components/default_button.dart';
import 'package:flutter_app_shop_demo/constants.dart';
import 'package:flutter_app_shop_demo/size_config.dart';

class OtpForm extends StatefulWidget {
  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode pin2,pin3,pin4;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pin2 = FocusNode();
    pin3 = FocusNode();
    pin4 = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pin2.dispose();
    pin3.dispose();
    pin4.dispose();
  }

  void nextField({String value, FocusNode focusNode}){
    if(value.length == 1 ){
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style:  TextStyle(fontSize: 24,),
                  decoration: otpInputDecoration,
                  textAlign: TextAlign.center,
                  onChanged: (value){
                    nextField(value: value,focusNode: pin2);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin2,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style:  TextStyle(fontSize: 24,),
                  decoration: otpInputDecoration,
                  textAlign: TextAlign.center,
                  onChanged: (value){
                    nextField(value: value,focusNode: pin3);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin3,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style:  TextStyle(fontSize: 24,),
                  decoration: otpInputDecoration,
                  textAlign: TextAlign.center,
                  onChanged: (value){
                    nextField(value: value,focusNode: pin4);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin4,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style:  TextStyle(fontSize: 24,),
                  decoration: otpInputDecoration,
                  textAlign: TextAlign.center,
                  onChanged: (value){
                    pin4.unfocus();
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight*0.15,),
          DefaultButton(
            text: "Continue",
            press: (){},
          ),
        ],
      ),
    );
  }
}
