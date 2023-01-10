import 'package:flutter/material.dart';

class StudentCardComponents {
  StudentCardComponents();
  TextEditingController controller = TextEditingController();
  String oldString = "";
  void inputFormatterAllow(String? value) {
    if (value != null && value.isNotEmpty) {
      List<String> char = value.characters.toList();

      if (char[0] == '.') {
        controller.text = oldString;
        return;
      }

      if (value.length > 1 && char[0] == '0' && char[1] != '.' ||
          value.length > 2 && char[2] == '.') {
        controller.text = oldString;
        return;
      }

      for (int i = 0, cont = 0; i < value.length; i++) {
        if (char[i] == ".") cont++;
        if (cont > 1) {
          controller.text = oldString;
          return;
        }
      }
      if (double.parse(value) > 10) {
        controller.text = oldString;
        return;
      }
      oldString = value;
    } else {
      oldString = "";
    }
  }
}
