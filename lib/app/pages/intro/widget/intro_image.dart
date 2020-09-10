import 'package:flutter/material.dart';

class IntroImage extends StatelessWidget {
  final String image;

  const IntroImage({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      height: MediaQuery.of(context).size.height * .4,
    );
  }
}
