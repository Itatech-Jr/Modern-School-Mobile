import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/create_activity/form_field_widget.dart';
import '../../../../share/text_style.dart';

class ActiveTypeWithWeight extends StatelessWidget {
  const ActiveTypeWithWeight({super.key});

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
                formFieldWidget(
                  width: size.width * 0.6,
                  title: "Tipo de atividade:",
                  child: TextFormField(
                    style: primaryTextStyle,
                    initialValue: "Substituir pelo widget",
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      isCollapsed: true,
                      filled: false,
                    ),
                  ),
                ),const SizedBox(width: 10,),
                formFieldWidget(
                    title: "Peso:",
                    width: 50,
                    child: TextFormField(
                      style: primaryTextStyle,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      maxLength: 2,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        counterText: "",
                        isCollapsed: true,
                      ),
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
