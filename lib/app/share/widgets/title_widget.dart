import 'package:flutter/material.dart';

import '../styles/text_style.dart';

Widget titleWidget({String text = '', Color? backgroundColor}) {
  return Container(
    alignment: Alignment.centerLeft,
    color: backgroundColor ?? Colors.white,
    width: double.infinity,
    height: 50,
    padding: const EdgeInsets.only(left: 16, right: 16),
    child: Text(text, style: primaryTextStyle),
  );
}
