import 'package:flutter/material.dart';
import 'package:flutter_app_shop_demo/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialCart extends StatelessWidget {
  final String icon;
  final Function press;
  const SocialCart({
    Key key,
    this.icon,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10),
          vertical: getProportionateScreenHeight(20),
        ),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: getProportionateScreenHeight(50),
        width:  getProportionateScreenWidth(50),
        decoration: BoxDecoration(
          color: Color(0xfff5f6f9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
