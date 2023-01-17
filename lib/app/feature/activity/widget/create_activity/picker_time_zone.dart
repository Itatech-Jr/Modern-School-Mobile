import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/share/text_style.dart';

Widget pickerTimeZone({required String timeZone, VoidCallback? onTapTime}) {
  return InkWell(
    onTap: onTapTime,
    child: Text(timeZone, style: secondaryTextStyle),
  );
}
