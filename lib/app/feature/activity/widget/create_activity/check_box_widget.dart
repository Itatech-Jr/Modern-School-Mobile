import 'package:flutter/material.dart';
Widget checkBoxWidget({Function(bool?)? onChanged,bool? check}) {
  return Checkbox(
    value: check ?? false,
    onChanged: onChanged,
  );
}
