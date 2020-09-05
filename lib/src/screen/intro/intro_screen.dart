import 'package:app_kanu_delivery/src/screen/intro/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  static String routeName = "/intro";
  IntroScreen({Key key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          children: [CustomAppBar()],
        ),
      ),
    );
  }
}
