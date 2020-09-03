import 'package:app_kanu_delivery/constants.dart';
import 'package:app_kanu_delivery/src/widget/curves_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      child: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            CurvesWidget(
              child: Container(
                padding: const EdgeInsets.only(top: 100, left: 50),
                width: double.infinity,
                height: 300,
                color: kPumpkin,
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40,
                    color: kWhite,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 300),
                    color: Colors.red,
                    child: Text('asdasdadadasda'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
