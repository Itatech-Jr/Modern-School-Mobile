import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/create_activity/form_field_widget.dart';
import '../../../../share/text_style.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          formFieldWidget(
            width: size.width * 0.9,
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
        ],
      ),
    );
  }
}
