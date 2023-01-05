import 'package:flutter/material.dart';

class CreateActivityController extends ChangeNotifier {
  String dataTimeField = "00/00/0000";
  String time = "00:00";
  bool checkedBox = false;

  //funcao da: Data de entrega: calendary
  void onTapDate(BuildContext context) async {
    DateTime? novaData = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (novaData != null) {
      dataTimeField = "${novaData.day}/${novaData.month}/${novaData.year}";
      notifyListeners();
    }
  }

  String getPickedTime(TimeOfDay pickedTime, BuildContext context) {
    return pickedTime.format(context).toString();
  }

  //funcao da: Horario de entrega: fuso horario
  void onTapTime(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );
    if (pickedTime != null) {
      // ignore: use_build_context_synchronously
      time = getPickedTime(pickedTime, context);
      notifyListeners();
    }
  }

  Checkbox checkBoxWidget() {
    return Checkbox(
      value: checkedBox,
      onChanged: (bool? value) {
        checkedBox = value!;
        notifyListeners();
      },
    );
  }
}
