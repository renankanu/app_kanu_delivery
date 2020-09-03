import 'package:app_kanu_delivery/src/screen/sign_up/sign_up_screen.dart';
import 'package:app_kanu_delivery/src/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

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
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
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
