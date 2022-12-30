import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/create_activity/form_field_widget.dart';
import 'package:modern_school_mobile/app/share/colors.dart';
import 'package:modern_school_mobile/app/share/text_style.dart';

class DateWithTime extends StatefulWidget {
  const DateWithTime({super.key});

  @override
  State<DateWithTime> createState() => _DateWithTimeState();
}

class _DateWithTimeState extends State<DateWithTime> {
  String dataTimeField = "00/00/0000";
  String time = "00:00";

  TimeOfDay? pickedTime;

  String getTime() {
    return pickedTime != null
        ? pickedTime!.format(context).toString()
        : "00:00";
  }

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
                formFieldWidget(
                  width: 130,
                  title: "Data de entrega:",
                  child: InkWell(
                    onTap: () async {
                      DateTime? novaData = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2015),
                          lastDate: DateTime(2101));
                      if (novaData != null) {
                        setState(() {
                          dataTimeField =
                              "${novaData.day}/${novaData.month}/${novaData.year}";
                        });
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(dataTimeField, style: secondaryTextStyle),
                        Icon(
                          Icons.calendar_month_sharp,
                          color: iconCalendaryAndTimeColor,
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
                    onTap: () async {
                      pickedTime = await showTimePicker(
                        initialTime: TimeOfDay.now(),
                        context: context,
                      );
                      if (pickedTime != null) {
                        time = getTime();
                        setState(() {});
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(time, style: secondaryTextStyle),
                        Icon(
                          Icons.access_time_filled,
                          color: iconCalendaryAndTimeColor,
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
}
