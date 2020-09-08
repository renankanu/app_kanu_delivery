import 'package:app_kanu_delivery/app/constants.dart';
import 'package:app_kanu_delivery/app/model/step_model.dart';
import 'package:app_kanu_delivery/app/utils/i18n/app_translate.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  final int initialPage;
  final PageController controller;
  final List<StepModel> listStep;

  const CustomAppBar(
      {Key key, this.initialPage, this.controller, this.listStep})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                if (initialPage > 0)
                  controller.animateToPage(
                    initialPage - 1,
                    duration: kAnimationDuration,
                    curve: Curves.easeIn,
                  );
              },
              child: AnimatedOpacity(
                opacity: initialPage != 0 ? 1.0 : 0.0,
                duration: kAnimationDuration,
                curve: initialPage != 0 ? Curves.easeIn : Curves.easeOut,
                child: Container(
                  width: 50,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.withAlpha(50),
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                  child: Icon(
                    FontAwesomeIcons.arrowLeft,
                    size: 18,
                  ),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                if ((initialPage + 1) < listStep.length)
                  controller.animateToPage(listStep.length,
                      duration: kAnimationDuration, curve: Curves.easeInOut);
              },
              child: Text(
                AppTranslate(context).text('intro.skip'),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
