import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/data_calendary_field.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/data_time_field.dart';
import 'package:modern_school_mobile/app/share/text_style.dart';

class DataEntregaComHorario extends StatelessWidget {
  const DataEntregaComHorario({super.key});

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
                      "Data de entrega:",
                      style: primaryTextStyle,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Calendary(),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Horário de entrega:",
                      style: primaryTextStyle,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Time(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
