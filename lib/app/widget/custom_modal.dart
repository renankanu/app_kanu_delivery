import 'package:app_kanu_delivery/app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomModal extends StatefulWidget {
  final String message;

  CustomModal({Key key, this.message}) : super(key: key);

  @override
  _CustomModalState createState() => _CustomModalState();
}

class _CustomModalState extends State<CustomModal> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      title: Text('Oppps! 😟'),
      actions: <Widget>[
        OutlineButton(
          textColor: kPumpkin,
          borderSide: BorderSide(color: kPumpkin),
          child: Text('OK'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
      actionsPadding: EdgeInsets.symmetric(horizontal: 16.0),
      content: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(widget.message),
          ],
        ),
      ),
    );
  }
}
