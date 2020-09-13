import 'package:app_kanu_delivery/app/constants.dart';
import 'package:app_kanu_delivery/app/pages/login/widget/login_form.dart';
import 'package:app_kanu_delivery/app/utils/i18n/app_translate.dart';
import 'package:app_kanu_delivery/app/utils/size_config.dart';
import 'package:app_kanu_delivery/app/widget/no_account_text.dart';
import 'package:app_kanu_delivery/app/widget/socal_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  AppTranslate(context).text('all.app_name'),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                LoginForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Divider(thickness: 1, color: kPuertoRico),
                    ),
                    SizedBox(width: 10),
                    Text(
                      AppTranslate(context).text('login.or'),
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
    );
  }
}
