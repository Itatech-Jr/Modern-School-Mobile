import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/field_widget.dart';
import '../../../../share/text_style.dart';

class TipoAtividadePeso extends StatelessWidget {
  const TipoAtividadePeso({super.key});

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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tipo de atividade:",
                      style: primaryTextStyle,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    fieldWidget(
                      width: size.width * 0.6,
                      child: TextFormField(
                        style: primaryTextStyle,
                        initialValue: "Substituir pelo widget",
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          isDense: true,
                          isCollapsed: true,
                          filled: false,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10,),
                SizedBox(
                  width: size.width * 0.25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Text(
                          "Peso:",
                          style: primaryTextStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      fieldWidget(
                        width: 50,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 2,
                          style: primaryTextStyle,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            counterText: "",
                            filled: false,
                            isDense: true,
                            isCollapsed: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
