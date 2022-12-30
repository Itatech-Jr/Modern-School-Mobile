import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/create_activity/form_field_widget.dart';
import '../../../../share/text_style.dart';

class EvaluationWithPeriod extends StatefulWidget {
  const EvaluationWithPeriod({super.key});

  @override
  State<EvaluationWithPeriod> createState() => _EvaluationWithPeriodState();
}

class _EvaluationWithPeriodState extends State<EvaluationWithPeriod> {
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
                              },
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
