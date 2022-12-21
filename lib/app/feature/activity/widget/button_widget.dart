import 'package:flutter/material.dart';
import '../../../share/button_style.dart';
import '../../../share/colors.dart';

Widget buttonWidget({Color? backgroundColor, String text = ''}) {
  return TextButton(
    style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(width: 2, color: primaryColor),
        ),
      ),
      backgroundColor: MaterialStateProperty.all(backgroundColor ?? primaryColor),
      foregroundColor: MaterialStateProperty.all(Colors.white),
    ),
    onPressed: () {},
    child: Text(text, style: backgroundColor != null ? primaryButttonStyle : secondaryButtonStyle),
  );
}
