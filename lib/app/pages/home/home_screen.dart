import 'package:app_kanu_delivery/app/pages/home/widgets/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Body(),
      ),
    );
  }
}
