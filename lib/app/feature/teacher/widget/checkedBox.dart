import 'package:flutter/material.dart';

bool checkValue = false;

Widget checkedBox() {
  return Checkbox(
    value: checkValue,
    onChanged: (bool? value) {
      checkValue = value!;
    },
  );
}
