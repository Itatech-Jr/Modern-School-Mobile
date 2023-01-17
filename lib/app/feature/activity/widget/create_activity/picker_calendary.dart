import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/share/text_style.dart';

Widget pickerCalendary({required String calendary, VoidCallback? onTapDate}) {
  return InkWell(
    onTap: onTapDate,
    child: Text(calendary, style: secondaryTextStyle),
  );
}
