import 'package:flutter/material.dart';
import 'package:flutter_app_shop_demo/components/custom_surfix_icon.dart';
import 'package:flutter_app_shop_demo/components/default_button.dart';
import 'package:flutter_app_shop_demo/components/form_error.dart';
import 'package:flutter_app_shop_demo/constants.dart';
import 'package:flutter_app_shop_demo/size_config.dart';
class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String email;
  String password;
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            buildEmailFormField(),
            SizedBox(height: getProportionateScreenHeight(20),),
            buildPassFormField(),
            SizedBox(height: getProportionateScreenHeight(20),),

            Row(
              children: <Widget>[
                Checkbox(
                  activeColor: kPrimaryColor,
                  value: remember,
                  onChanged: (value){
                    setState(() {
                      remember = value;
                    });
                  },
                ),
                Text("Remember me"),
                Spacer(),
                GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed("/forgot_password"),
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(decoration: TextDecoration.underline, ),
                  ),
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(20),),
            FormError(error: errors),
            SizedBox(height: getProportionateScreenHeight(20),),
            DefaultButton(
              text: "Log In",
              press: (){
                setState(() {
                  if(_formKey.currentState.validate()){
                    _formKey.currentState.save();
                    Navigator.of(context).pushNamed("/login_success");
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildPassFormField(){
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

  TextFormField buildEmailFormField(){
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


