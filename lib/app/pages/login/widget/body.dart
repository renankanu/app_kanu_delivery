import 'package:app_kanu_delivery/app/constants.dart';
import 'package:app_kanu_delivery/app/pages/login/widget/login_form.dart';
import 'package:app_kanu_delivery/app/utils/size_config.dart';
import 'package:app_kanu_delivery/app/widget/no_account_text.dart';
import 'package:app_kanu_delivery/app/widget/socal_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: kAlgaeGreen,
      child: SizedBox(
        width: double.infinity,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: Offset(1, 1), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: SizeConfig.screenHeight * 0.04),
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Login with your email and password  \nor continue with social media",
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: SizeConfig.screenHeight * 0.08),
                    SignForm(),
                    SizedBox(height: SizeConfig.screenHeight * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Divider(thickness: 1, color: kPuertoRico),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Or',
                          style: TextStyle(
                              color: kPuertoRico, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Divider(thickness: 1, color: kPuertoRico),
                        ),
                      ],
                    ),
                    SizedBox(height: SizeConfig.screenHeight * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocalCard(
                            icon: Ionicons.logo_google,
                            press: () {},
                            color: kGoogleColor),
                        SocalCard(
                          icon: Ionicons.logo_facebook,
                          press: () {},
                          color: kFaceColor,
                        ),
                        SocalCard(
                          icon: Ionicons.logo_apple,
                          press: () {},
                          color: Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    NoAccountText(),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
