import 'package:flutter/material.dart';
import 'package:flutter_app_shop_demo/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key key,
    @required this.error,
  }) : super(key: key);

  final List<String> error;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:List.generate(
        error.length, (index) => formErrorText(error: error[index]),
      ),
    );
  }

  Row formErrorText({String error}) {
    return Row(
      children: <Widget>[
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: getProportionateScreenHeight(14),
          width: getProportionateScreenWidth(14),
        ),
        SizedBox(width: getProportionateScreenWidth(10),),
        Text(error),
      ],
    );
  }
}
