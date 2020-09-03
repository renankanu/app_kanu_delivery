import 'package:app_kanu_delivery/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Lato",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    cursorColor: kStack,
    accentColor: Colors.red,
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: kTextColor),
    gapPadding: 2,
  );
  return InputDecorationTheme(
    labelStyle: new TextStyle(color: kStack),
    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
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
    iconTheme: IconThemeData(color: kStack),
    textTheme: TextTheme(
      headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
    ),
  );
}
