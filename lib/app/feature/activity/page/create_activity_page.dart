import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/appbar_widget.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/button_widget.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/title_widget.dart';
import '../widget/create_activity/date_with_time.dart';
import '../widget/create_activity/description.dart';
import '../widget/create_activity/upload_file.dart';
import '../widget/create_activity/evaluation_with_period.dart';
import '../widget/create_activity/active_type_with_weight.dart';

class CreateActivityPage extends StatefulWidget {
  const CreateActivityPage({super.key});

  @override
  State<CreateActivityPage> createState() => _CreateActivityPageState();
}

class _CreateActivityPageState extends State<CreateActivityPage> {
  String dataTimeField = "00/00/0000";
  String time = "00:00";
  bool checkedBox = false;

  //funcao da: Data de entrega: calendary
  void onTapDate() async {
    DateTime? novaData = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (novaData != null) {
      dataTimeField = "${novaData.day}/${novaData.month}/${novaData.year}";
      setState(() {});
    }
  }

  String getPickedTime(TimeOfDay pickedTime) {
    return pickedTime.format(context).toString();
  }

  //funcao da: Horario de entrega: fuso horario
  void onTapTime() async {
    TimeOfDay? pickedTime = await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );
    if (pickedTime != null) {
      time = getPickedTime(pickedTime);
      setState(() {});
    }
  }

  //funcao que leva o check box pro Widget
  Checkbox checkBoxWidget() {
    return Checkbox(
      value: checkedBox,
      onChanged: (bool? value) {
        setState(() {
          checkedBox = value!;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appbarWidget(),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            titleWidget(text: "TURMA 9º ANO A COMPONENTES: MATEMÁTICA"),
            dateWithTime(
                dataTimeField: dataTimeField,
                time: time,
                size: size,
                onTapDate: onTapDate,
                onTapTime: onTapTime),
            activeTypeWithWeight(size: size),
            evaluationWithPeriod(
              size: size,
              checkbox: checkBoxWidget(),
            ),
            uploadFile(size: size),
            description(size),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buttonWidget(text: "Voltar"),
                  buttonWidget(
                      text: "Confirmar", backgroundColor: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}