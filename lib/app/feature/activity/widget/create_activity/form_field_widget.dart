import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/field_widget.dart';
import '../../../../share/text_style.dart';

Widget formFieldWidget({required String title, required Widget child}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(title,style: primaryTextStyle),
      const SizedBox(height: 5),
      fieldWidget(child: child),
    ],
  );
}
