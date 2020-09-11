import 'package:app_kanu_delivery/app/pages/sign_up/widget/body.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Body(),
    );
  }
}
