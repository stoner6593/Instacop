import 'package:flutter/material.dart';
import 'package:instacop/src/helpers/colors_constant.dart';

class CusRaisedButton extends StatefulWidget {
  CusRaisedButton({this.backgroundColor, @required this.title, this.onPress});

  final Color backgroundColor;
  final String title;
  final Function onPress;

  @override
  _CusRaisedButtonState createState() => _CusRaisedButtonState();
}

class _CusRaisedButtonState extends State<CusRaisedButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      minWidth: double.infinity,
      color: widget.backgroundColor,
      child: Text(
        widget.title,
        style: TextStyle(
            color: (widget.backgroundColor == kColorBlack)
                ? kColorWhite
                : kColorBlack),
      ),
      onPressed: () {
        widget.onPress();
      },
    );
  }
}