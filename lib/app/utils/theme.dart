import 'package:app_kanu_delivery/app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Lato",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    cupertinoOverrideTheme: CupertinoThemeData(
      primaryColor: kGreenPea,
    ),
    cursorColor: kGreenPea,
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: kGreenPea, width: 0.7),
  );
  return InputDecorationTheme(
    labelStyle: new TextStyle(color: kGreenPea),
    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
    hintStyle: TextStyle(color: kGreenPea),
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    centerTitle: true,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: kGreenPea),
    textTheme: TextTheme(
      headline6: TextStyle(color: kGreenPea, fontSize: 18),
    ),
  );
}
