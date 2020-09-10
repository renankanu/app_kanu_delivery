import 'package:app_kanu_delivery/app/model/step_model.dart';
import 'package:app_kanu_delivery/app/pages/intro/widget/body.dart';
import 'package:app_kanu_delivery/app/pages/intro/widget/custom_app_bar.dart';
import 'package:app_kanu_delivery/app/pages/intro/widget/indicator.dart';
import 'package:app_kanu_delivery/app/utils/i18n/app_translate.dart';
import 'package:app_kanu_delivery/app/utils/images.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  static String routeName = "/intro";
  IntroScreen({Key key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<StepModel> listStep = List<StepModel>();
  var _controller = PageController();
  var initialPage = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(
      initialPage: 0,
      keepPage: true,
      viewportFraction: 1.0,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void createListSteps(BuildContext context) {
    StepModel stepOne = StepModel(
        id: 1,
        title: AppTranslate(context).text('intro.screen_one_title'),
        text: AppTranslate(context).text('intro.screen_one_info'),
        image: Images.splash01);
    StepModel stepTwo = StepModel(
        id: 2,
        title: AppTranslate(context).text('intro.screen_two_title'),
        text: AppTranslate(context).text('intro.screen_two_info'),
        image: Images.splash02);
    StepModel stepThree = StepModel(
        id: 3,
        title: AppTranslate(context).text('intro.screen_three_title'),
        text: AppTranslate(context).text('intro.screen_three_info'),
        image: Images.splash03);
    listStep = [stepOne, stepTwo, stepThree];
  }

  @override
  Widget build(BuildContext context) {
    createListSteps(context);
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
