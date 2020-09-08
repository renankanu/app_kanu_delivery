import 'package:app_kanu_delivery/app/constants.dart';
import 'package:app_kanu_delivery/app/model/step_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final int initialPage;
  final List<StepModel> listStep;
  final PageController controller;

  const Indicator({Key key, this.initialPage, this.listStep, this.controller})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 90,
              height: 90,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(kPumpkin),
                value: (initialPage + 1) * 0.34,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                if ((initialPage + 1) < listStep.length)
                  controller.nextPage(
                    duration: kAnimationDuration,
                    curve: Curves.easeIn,
                  );
              },
              child: Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  color: kPumpkin,
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
