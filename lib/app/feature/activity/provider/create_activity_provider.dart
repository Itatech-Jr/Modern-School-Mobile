import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class CreateActivityProvider extends ChangeNotifier {
  String calendary = "00/00/0000";
  String timeZone = "00:00";
  String? weight;
  bool checkedBox = false;
  List<File>? files;

  //logicamente esses itens iriam vir da API
  String dropDownValueActive = "Atividade 1";
  List<String> itemsActive = [
    "Atividade 1",
    "Atividade 2",
    "Atividade 3",
    "Atividade 4",
    "Atividade 5",
  ];

  String dropDownValuePeriod = "Período 1";
  List<String> itemsPeriod = [
    "Período 1",
    "Período 2",
    "Período 3",
    "Período 4",
    "Período 5",
  ];

  void dropDownButtonActive(String? s) {
    dropDownValueActive = s!;
    notifyListeners();
  }

  void dropDownButtonPeriod(String? s) {
    dropDownValuePeriod = s!;
    notifyListeners();
  }

  void weightField(String? value) {
    weight = value;
  }

  //funcao da: Data de entrega: calendary
  void onTapDate(BuildContext context) async {
    DateTime? novaData = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (novaData != null) {
      calendary = "${novaData.day}/${novaData.month}/${novaData.year}";
      notifyListeners();
    }
  }

  //usado logo abaixo no onTapTime só pra retornar a String
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
      timeZone = getPickedTime(pickedTime, context);
      notifyListeners();
    }
  }

  void onPressedFiles() async {
    FilePickerResult? resul =
        await FilePicker.platform.pickFiles(allowMultiple: true);
    if (resul != null) {
      files = resul.paths.map((e) => File(e!)).toList();
    }
    notifyListeners();
  }

  void checkBoxOnChanged(bool? value) {
    checkedBox = value!;
    notifyListeners();
  }

  void justNorifier() {
    notifyListeners();
  }
}
