import 'package:app_kanu_delivery/app/pages/register/widget/body.dart';
import 'package:app_kanu_delivery/app/utils/i18n/app_translate.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTranslate(context).text('register.register_title'),
        ),
      ),
      body: Body(),
    );
  }
}
