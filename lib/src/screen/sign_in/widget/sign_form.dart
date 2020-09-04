import 'package:app_kanu_delivery/constants.dart';
import 'package:app_kanu_delivery/src/utils/size_config.dart';
import 'package:app_kanu_delivery/src/widget/custom_modal.dart';
import 'package:app_kanu_delivery/src/widget/custom_surfix_icon.dart';
import 'package:app_kanu_delivery/src/widget/default_button.dart';
import 'package:flutter/material.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];

  void removeError() {
    print(email);
  }

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
      // TODO call new screen here
      // Navigator.pushNamed(context, LoginSuccessScreen.routeName);
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
              Checkbox(
                value: remember,
                activeColor: kPumpkin,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                // onTap: () => Navigator.pushNamed(
                //     context, ForgotPasswordScreen.routeName),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline),
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
      onSaved: (newValue) => password = newValue,
      decoration: InputDecoration(
        labelText: "Password",
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      decoration: InputDecoration(
        hintText: "Email",
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
