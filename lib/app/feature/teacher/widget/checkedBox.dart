import 'package:flutter/material.dart';

  bool checkValue = false;

  Widget checkBoxWidget(bool checkValue) {
    return Checkbox(
      value: checkValue,
      onChanged: (bool? value) {
        checkValue = value!;
      },
    );
  }
