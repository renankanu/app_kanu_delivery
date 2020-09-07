import 'package:flutter/material.dart';

class IntroText extends StatelessWidget {
  final String desc;

  const IntroText({Key key, this.desc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      desc,
      style: TextStyle(
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );
  }
}
