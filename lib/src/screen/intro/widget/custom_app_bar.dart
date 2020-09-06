import 'package:app_kanu_delivery/model/step_model.dart';
import 'package:flutter/material.dart';

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
                    duration: Duration(microseconds: 500),
                    curve: Curves.easeIn,
                  );
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.withAlpha(50),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: Icon(Icons.arrow_back_ios),
              ),
            ),
            FlatButton(
              onPressed: () {
                if (initialPage < listStep.length)
                  controller.animateToPage(listStep.length,
                      duration: Duration(microseconds: 500),
                      curve: Curves.easeInOut);
              },
              child: Text(
                "Skip",
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
