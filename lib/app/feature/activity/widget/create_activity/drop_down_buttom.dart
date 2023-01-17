import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/share/text_style.dart';

Widget dropDownButton({
  required String dropdownvalue,
  required List <String> items,
  Function(String? value)? onChanged,
  Widget? underline,//só aceita "caixas", sizedbox, container, etc.
  bool isDense = false,
  bool isExpanded = false,
}) {
  return DropdownButton(
    icon: const Icon(Icons.arrow_drop_down,color: Color(0xFF1351b4),size: 30,),
    isDense: isDense,
    isExpanded: isExpanded,
    underline: underline,
    style: primaryTextStyle,
    value: dropdownvalue,
    items: items.map((String items) {
      return DropdownMenuItem(
        value: items,
        child: Text(items,),
      );
    }).toList(),
    onChanged: onChanged,
  );
}
