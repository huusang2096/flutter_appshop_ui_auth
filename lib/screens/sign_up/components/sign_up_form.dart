import 'package:flutter/material.dart';
import 'package:flutter_app_shop_demo/components/custom_surfix_icon.dart';
import 'package:flutter_app_shop_demo/components/default_button.dart';
import 'package:flutter_app_shop_demo/components/form_error.dart';
import 'package:flutter_app_shop_demo/constants.dart';
import 'package:flutter_app_shop_demo/size_config.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email,password,confirm_password;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30),),
          buildPassFormField(),
          SizedBox(height: getProportionateScreenHeight(30),),
          buildPassAgainFormField(),
          FormError(error: errors),
          SizedBox(height: getProportionateScreenHeight(40),),
          DefaultButton(
            text: "Continue",
            press: (){
              if(_formKey.currentState.validate()){
                //do Sth
                Navigator.pushNamed(context, "/complete_profile");
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPassAgainFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirm_password = newValue,
      onChanged: (value){
        if(value == password){
          removeError(error: kMatchPassError);
        }
        return;
      },
      validator: (value){
        if(value != password){
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Confirm - Password",
        hintText: "Re - Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurfixIcon(svgIcon: "assets/icons/Lock.svg",),
      ),
    );
  }

  TextFormField buildPassFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value){
        if(value.isNotEmpty){
          removeError(error: kPassNullError);
        }
        if(value.length >= 8){
          removeError(error: kShortPassError);
        }
        password = value;
        return;
      },
      validator: (value){
        if(value.isEmpty){
          addError(error: kPassNullError);
          return "";
        }
        if(value.length < 8){
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurfixIcon(svgIcon: "assets/icons/Lock.svg",),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value){
        if(value.isNotEmpty){
          removeError(error: kEmailNullError);
        }
        if(emailValidatorRegExp.hasMatch(value)){
          removeError(error: kInvalidEmailError);
        }
        return;
      },
      validator: (value){
        if(value.isEmpty){
          addError(error: kEmailNullError);
          return "";
        }
        if(!emailValidatorRegExp.hasMatch(value)){
          addError(error: kInvalidEmailError);
          return"";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurfixIcon(svgIcon: "assets/icons/Mail.svg",),
      ),
    );
  }

  void addError({String error}){
    if(!errors.contains(error)){
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String error}){
    if(errors.contains(error)){
      setState(() {
        errors.remove(error);
      });
    }
  }
}

