import 'package:app_kanu_delivery/app/constants.dart';
import 'package:app_kanu_delivery/app/utils/size_config.dart';
import 'package:app_kanu_delivery/app/widget/custom_modal.dart';
import 'package:app_kanu_delivery/app/widget/default_button.dart';
import 'package:flutter/material.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
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
            children: [
              GestureDetector(
                // onTap: () => Navigator.pushNamed(
                //     context, ForgotPasswordScreen.routeName),
                child: Text(
                  "Forgot Password",
                ),
              )
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: "Continue",
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
        hintText: "Password",
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
