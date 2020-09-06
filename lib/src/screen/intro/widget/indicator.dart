import 'package:app_kanu_delivery/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      margin: EdgeInsets.symmetric(vertical: 12),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 90,
              height: 90,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(kPumpkin),
                value: 0.25,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {},
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
