import 'package:app_kanu_delivery/app/model/step_model.dart';
import 'package:flutter/material.dart';

import 'intro_image.dart';
import 'intro_text.dart';

class Body extends StatelessWidget {
  final PageController controller;
  final List<StepModel> listStep;

  const Body({Key key, this.controller, this.listStep}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: controller,
        itemCount: listStep.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              index.isOdd
                  ? IntroText(
                      title: listStep[index].title, desc: listStep[index].text)
                  : IntroImage(image: listStep[index].image),
              SizedBox(
                height: 55,
              ),
              index.isOdd
                  ? IntroImage(image: listStep[index].image)
                  : IntroText(
                      title: listStep[index].title, desc: listStep[index].text),
            ],
          );
        },
      ),
    );
  }
}
