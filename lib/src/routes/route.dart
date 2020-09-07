import 'package:app_kanu_delivery/src/screen/intro/intro_screen.dart';
import 'package:app_kanu_delivery/src/screen/sign_in/sign_in_screen.dart';
import 'package:app_kanu_delivery/src/screen/sign_up/sign_up_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  IntroScreen.routeName: (context) => IntroScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
};
