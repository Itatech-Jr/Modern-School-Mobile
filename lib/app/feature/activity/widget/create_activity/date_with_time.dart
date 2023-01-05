import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/create_activity/form_field_widget.dart';
import 'package:modern_school_mobile/app/share/text_style.dart';


Widget dateWithTimeWidget(
    {required String dataTimeField,
    required String time,
    required Size size,
    required VoidCallback onTapDate,
    required VoidCallback onTapTime}) {
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
              formFieldWidget(
                width: 130,
                title: "Data de entrega:",
                child: InkWell(
                  onTap: onTapDate,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(dataTimeField, style: secondaryTextStyle),
                      const Icon(
                        Icons.calendar_month_sharp,
                        color: Color(0xFF1351b4),
                      ),
                    ],
                  ),
                ),
              ),
              formFieldWidget(
                width: 120,
                title: "Horário de entrega:",
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: onTapTime,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(time, style: secondaryTextStyle),
                      const Icon(
                        Icons.access_time_filled,
                        color: Color(0xFF1351b4),
                      ),
                    ],
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
