import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/create_activity/form_field_widget.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/data_calendary_field.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/data_time_field.dart';
import 'package:modern_school_mobile/app/share/text_style.dart';

class DataEntregaComHorario extends StatefulWidget {
  DataEntregaComHorario({super.key});

  @override
  State<DataEntregaComHorario> createState() => _DataEntregaComHorarioState();
}

class _DataEntregaComHorarioState extends State<DataEntregaComHorario> {
  String dataTimeField = "00/00/0000";

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
                  title: "Data de entrega:",
                  child: InkWell(
                    onTap: () async {
                      DateTime? novaData = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2015), lastDate: DateTime(2101));
                      if(novaData != null){
                        setState(() {
                          dataTimeField = "${novaData.day}/${novaData.month}/${novaData.year}";
                        });
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(dataTimeField, style: secondaryTextStyle),
                        const Icon(Icons.calendar_month_sharp, color: Color.fromARGB(255, 19, 81, 180)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
// /Time()
