import 'package:app_kanu_delivery/app/utils/size_config.dart';
import 'package:flutter/material.dart';

const kAlgaeGreen = Color(0xFF8FE1A3);
const kPuertoRico = const Color(0xFF37BFA7);
const kGreenPea = const Color(0xFF195251);
const kBostonBlue = const Color(0xFF377BC4);
const kVictoria = const Color(0xFF544482);
const kWhite = const Color(0xFFFFFFFF);
const kBblack = const Color(0xFF000000);
const kTextColor = Color(0xFF000000);

const kAnimationDuration = Duration(milliseconds: 400);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please enter your email";
const String kInvalidEmailError = "Please enter valid email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please enter your phone number";
const String kAddressNullError = "Please enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
