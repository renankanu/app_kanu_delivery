import 'package:app_kanu_delivery/app/constants.dart';
import 'package:app_kanu_delivery/app/utils/i18n/app_translate.dart';
import 'package:app_kanu_delivery/app/utils/size_config.dart';
import 'package:app_kanu_delivery/app/widget/custom_modal.dart';
import 'package:app_kanu_delivery/app/widget/default_button.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool remember = false;

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
          SizedBox(height: 30),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                // onTap: () => Navigator.pushNamed(
                //     context, ForgotPasswordScreen.routeName),
                child: Text(
                  AppTranslate(context).text('login.forgot_password'),
                  style: TextStyle(
                      color: kPuertoRico, fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(32)),
          DefaultButton(
            text: AppTranslate(context).text('login.continue'),
            press: () {
              validForm();
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      controller: _passwordController,
      obscureText: true,
      decoration: InputDecoration(
        hintText: AppTranslate(context).text('login.password'),
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
