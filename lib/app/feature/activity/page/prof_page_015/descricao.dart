import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/field_widget.dart';
import '../../../../share/text_style.dart';

class Descricao extends StatelessWidget {
  const Descricao({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width * 0.90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Descrição:",
                      style: primaryTextStyle,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    SizedBox(
                      width: size.width * 0.9,
                      child: fieldWidget(
                        child: TextFormField(
                          maxLines: 8,
                          style: primaryTextStyle,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            filled: false,
                            hintText: "Escreva algo..."
                          ),
                        ),
                      )
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
