import 'package:flutter/material.dart';
import '../../../share/styles/text_style.dart';
import '../../../share/widgets/field_widget.dart';

Widget formFieldWidget({required String title, required Widget child, double? width}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(title, style: TextStyle(
        fontSize: 16,
        color: Color.fromRGBO(19, 81, 180, 1),
      )),
      const SizedBox(height: 5),
      fieldWidget(child: child, width: width),
    ],
  );
}