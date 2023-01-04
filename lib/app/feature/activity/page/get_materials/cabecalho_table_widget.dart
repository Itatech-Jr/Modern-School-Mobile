import 'package:flutter/material.dart';

Widget cabecalhoTableWidget({required Map<String, int> atbColumns}){
  return Container(
    decoration: const BoxDecoration(
      color: Color(0XFFB8D1F7),
      borderRadius: BorderRadius.only(topLeft: Radius.circular(7), topRight: Radius.circular(7)),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(children: [
        for (var atbColum in atbColumns.entries)
          Expanded(
              flex: atbColum.value,
              child: Text(
                atbColum.key, textAlign: TextAlign.center,
                style: TextStyle(color: Color(0XFF1351B4)),
              ))
      ]),
    ),
  );
}