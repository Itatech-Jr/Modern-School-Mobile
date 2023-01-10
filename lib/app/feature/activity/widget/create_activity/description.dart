import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/create_activity/form_field_widget.dart';
import '../../../../share/text_style.dart';

Widget description(Size size){
  return Padding(
    padding: const EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
    child: formFieldWidget(
      title: "Descrição:",
      child: TextFormField(
        style: primaryTextStyle,
        maxLines: 8,
        decoration: const InputDecoration(
            border: InputBorder.none,
            isCollapsed: true,
            hintText: "Escreva algo..."
        ),
      ),
    ),
  );
}
