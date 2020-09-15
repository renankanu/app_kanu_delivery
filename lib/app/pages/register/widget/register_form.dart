import 'package:app_kanu_delivery/app/constants.dart';
import 'package:app_kanu_delivery/app/utils/i18n/app_translate.dart';
import 'package:app_kanu_delivery/app/utils/size_config.dart';
import 'package:app_kanu_delivery/app/widget/custom_modal.dart';
import 'package:app_kanu_delivery/app/widget/default_button.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  void callModal(BuildContext context, String message) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return CustomModal(message: message);
        });
  }

  void validForm() {
    if (_emailController.text.isEmpty) {
      callModal(context, kEmailNullError);
      return;
    }
    if (!emailValidatorRegExp.hasMatch(_emailController.text)) {
      callModal(context, kInvalidEmailError);
      return;
    }
    if (_passwordController.text.isEmpty) {
      callModal(context, kPassNullError);
      return;
    }
    if (_passwordController.text.length < 8) {
      callModal(context, kShortPassError);
      return;
    }
    if (_confirmPasswordController.text.isEmpty) {
      callModal(context, kPassNullError);
      return;
    }
    if (_passwordController.text != _confirmPasswordController.text) {
      callModal(context, kMatchPassError);
      return;
    }
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      //call
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildConformPassFormField(),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: AppTranslate(context).text('register.register'),
            press: () {
              validForm();
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildConformPassFormField() {
    return TextFormField(
      controller: _confirmPasswordController,
      obscureText: true,
      decoration: InputDecoration(
        hintText: AppTranslate(context).text('register.confirm_password'),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      controller: _passwordController,
      obscureText: true,
      decoration: InputDecoration(
        hintText: AppTranslate(context).text('register.password'),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Email",
      ),
    );
  }
}
