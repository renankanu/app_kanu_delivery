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
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.red, Colors.red.withOpacity(0.9)],
                  ),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40,
                    color: Color(0xff6a515e),
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
