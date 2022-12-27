import 'package:flutter/material.dart';
import '../../../../share/text_style.dart';
import '../../widget/field_widget.dart';

class EnvioDeArquivo extends StatelessWidget {
  const EnvioDeArquivo({super.key});

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
                      "Envio de arquivos:",
                      style: primaryTextStyle,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    fieldWidget(
                      width: size.width * 0.9,
                      child: TextFormField(
                        style: primaryTextStyle,
                        initialValue: "Substituir pelo widget",
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          isDense: true,
                          isCollapsed: true,
                        ),
                      ),
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
