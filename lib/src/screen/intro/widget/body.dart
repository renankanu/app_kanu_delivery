import 'package:app_kanu_delivery/model/step_model.dart';
import 'package:app_kanu_delivery/src/screen/intro/widget/intro_image.dart';
import 'package:app_kanu_delivery/src/screen/intro/widget/intro_text.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<StepModel> listStep = StepModel.list;
    var _controller = PageController();
    return Expanded(
      child: PageView.builder(
        controller: _controller,
        itemCount: listStep.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              index.isOdd
                  ? IntroText(desc: listStep[index].text)
                  : IntroImage(image: listStep[index].image),
              SizedBox(
                height: 55,
              ),
              index.isOdd
                  ? IntroImage(image: listStep[index].image)
                  : IntroText(desc: listStep[index].text),
            ],
          );
        },
      ),
    );
  }
}
