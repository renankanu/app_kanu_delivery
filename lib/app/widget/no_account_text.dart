import 'package:app_kanu_delivery/app/constants.dart';
import 'package:app_kanu_delivery/app/pages/sign_up/sign_up_screen.dart';
import 'package:app_kanu_delivery/app/utils/size_config.dart';
import 'package:flutter/material.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account? ",
          style: TextStyle(fontSize: getProportionateScreenWidth(14)),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/sign_up'),
          child: Text(
            "Sign Up",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(14), color: kPumpkin),
          ),
        ),
      ],
    );
  }
}
