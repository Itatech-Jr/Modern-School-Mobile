import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/share/text_style.dart';

Widget setGradeInitialCard(Size size) {
  return SizedBox(
    height: 80,
    child: Card(
      color: const Color(0xFFB8D1F7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            child: Text(
              "Nº",
              textAlign: TextAlign.center,
              style: primaryTextStyle.copyWith(color: const Color(0xFF1351B4)),
            ),
          ),
          SizedBox(
            width: size.width * 0.25,
            child: Text(
              "Matrícula",
              textAlign: TextAlign.center,
              style: primaryTextStyle.copyWith(color: const Color(0xFF1351B4)),
            ),
          ),
          SizedBox(
            width: size.width * 0.42,
            child: Text(
              "Nome",
              textAlign: TextAlign.center,
              overflow: TextOverflow.fade,
              style: primaryTextStyle.copyWith(color: const Color(0xFF1351B4)),
            ),
          ),
          SizedBox(
            width: 50,
            child: Text(
              "Notas",
              textAlign: TextAlign.center,
              style: primaryTextStyle.copyWith(color: const Color(0xFF1351B4)),
            ),
          ),
        ],
      ),
    ),
  );
}