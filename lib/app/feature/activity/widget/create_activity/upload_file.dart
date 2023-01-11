import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/create_activity/form_field_widget.dart';
import '../../../../share/text_style.dart';

Widget uploadFile({required Size size}) {
  return Padding(
    padding: const EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
    child: formFieldWidget(
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
  );
}
