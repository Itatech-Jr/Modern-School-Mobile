import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/create_activity/form_field_widget.dart';
import '../../../../share/text_style.dart';

Widget evaluationWithPeriod({required Size size, required Checkbox checkbox}) {
  return Padding(
    padding: const EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        formFieldWidget(
          width: size.width * 0.6,
          title: "Período:",
          child: TextFormField(
            style: primaryTextStyle,
            initialValue: "Substituir pelo widget",
            decoration: const InputDecoration(
              isCollapsed: true,
              border: InputBorder.none,
              filled: false,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          color: Colors.green,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Text(
                      "Avaliativo:",
                      style: primaryTextStyle,
                    ),
                  ),
                  checkbox,
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
