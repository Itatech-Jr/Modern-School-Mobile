import 'package:flutter/material.dart';
import '../../../../share/text_style.dart';
import '../../widget/field_widget.dart';

class PeriodoComAvaliativo extends StatefulWidget {
  const PeriodoComAvaliativo({super.key});

  @override
  State<PeriodoComAvaliativo> createState() => _PeriodoComAvaliativoState();
}

class _PeriodoComAvaliativoState extends State<PeriodoComAvaliativo> {
  bool checked = false;
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
                      "Periodo:",
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            child: Text(
                              "Avaliativo:",
                              style: primaryTextStyle,
                            ),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          SizedBox(
                            width: 40,
                            child: Checkbox(
                              value: checked,
                              onChanged: (bool? value) {
                                setState(() {
                                  checked = value!;
                                });
                              }
                            ),
                          ),
                        ],
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
