import 'package:flutter/material.dart';
import 'package:flutter_app_shop_demo/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSurfixIcon extends StatelessWidget {
  final String svgIcon;
  const CustomSurfixIcon({
    Key key,
    @required this.svgIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: getProportionateScreenWidth(18),
      ),
    );
  }
}
