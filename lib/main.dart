import 'package:app_kanu_delivery/src/routes/route.dart';
import 'package:app_kanu_delivery/src/screen/intro/intro_screen.dart';
import 'package:app_kanu_delivery/src/utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kanu Delivery',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: IntroScreen.routeName,
      routes: routes,
    );
  }
}
