import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/create_activity/form_field_widget.dart';
import '../../../../share/text_style.dart';

Widget uploadFile({required Size size}) {
  return Padding(
    padding: const EdgeInsets.only(top: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        formFieldWidget(
          width: size.width * 0.9,
          title: "Envio de arquivos:",
          child: TextFormField(
            style: primaryTextStyle,
            initialValue: "Substituir pelo widget",
            decoration: const InputDecoration(
              border: InputBorder.none,
              isCollapsed: true,
            ),
          ),
        ),
      ],
    ),
  );
}
