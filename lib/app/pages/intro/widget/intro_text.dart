import 'package:flutter/material.dart';

class IntroText extends StatelessWidget {
  final String title;
  final String desc;

  const IntroText({Key key, this.desc, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 32,
        ),
        Text(
          desc,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
