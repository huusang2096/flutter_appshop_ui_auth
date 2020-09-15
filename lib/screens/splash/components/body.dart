import 'package:flutter/material.dart';
import 'package:flutter_app_shop_demo/components/default_button.dart';
import 'package:flutter_app_shop_demo/constants.dart';
import 'package:flutter_app_shop_demo/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_app_shop_demo/screens/splash/components/splash_content.dart';
import 'package:flutter_app_shop_demo/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String,String>> splashData = [
    {
      "image": "assets/images/splash_1.png",
      "text": "Welcome to TOKOTO, Let's Shop!",
    },
    {
      "image": "assets/images/splash_2.png",
      "text": "We help people connect with store \n around United State of America",
    },
    {
      "image": "assets/images/splash_3.png",
      "text": "We show the easy way to shop. \nJust stay at home with us",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value){
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context,index) => SplashContent(
                  image: splashData[index]['image'],
                  text: splashData[index]['text'],
              ),),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:List.generate(
                          splashData.length, (index) => buildDot(index)
                      ),
                    ),
                    Spacer(flex: 3,),
                    DefaultButton(
                      text: "Continue",
                      press: (){
                        Navigator.of(context).pushNamed("/sign_in");
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDot(int index) {
    return AnimatedContainer(
      //AnimatedContainer need attr duration
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : kTertiary,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}



