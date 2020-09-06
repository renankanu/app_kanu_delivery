import 'package:app_kanu_delivery/constants.dart';
import 'package:app_kanu_delivery/model/step_model.dart';
import 'package:app_kanu_delivery/src/screen/intro/widget/body.dart';
import 'package:app_kanu_delivery/src/screen/intro/widget/custom_app_bar.dart';
import 'package:app_kanu_delivery/src/screen/intro/widget/indicator.dart';
import 'package:app_kanu_delivery/src/screen/intro/widget/intro_image.dart';
import 'package:app_kanu_delivery/src/screen/intro/widget/intro_text.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  static String routeName = "/intro";
  IntroScreen({Key key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<StepModel> listStep = StepModel.list;
  var _controller = PageController();
  var initialPage = 0;
  @override
  Widget build(BuildContext context) {
    _controller.addListener(() {
      setState(() {
        initialPage = _controller.page.round();
      });
    });
    return Container(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBar(
                initialPage: initialPage,
                controller: _controller,
                listStep: listStep),
            Body(controller: _controller, listStep: listStep),
            Indicator(
                initialPage: initialPage,
                listStep: listStep,
                controller: _controller),
          ],
        ),
      ),
    );
  }
}
