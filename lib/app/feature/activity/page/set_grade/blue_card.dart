import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/share/colors.dart';
import 'package:modern_school_mobile/app/share/text_style.dart';

Widget blueCard(Size size){
  return SizedBox(
    height: 80,
    child: Card(
      color: backGroundGradeColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            child: Text(
              "Nº",
              textAlign: TextAlign.center,
              style: primaryTextStyle.copyWith(color: textGradeColor),
            ),
          ),
          SizedBox(
            width: size.width * 0.25,
            child: Text(
              "Matrícula",
              textAlign: TextAlign.center,
              style: primaryTextStyle.copyWith(color: textGradeColor),
            ),
          ),
          SizedBox(
            width: size.width * 0.42,
            child: Text(
              "Nome",
              textAlign: TextAlign.center,
              overflow: TextOverflow.fade,
              style: primaryTextStyle.copyWith(color: textGradeColor),
            ),
          ),
          SizedBox(
            width: size.width * 0.14,
            child: Text(
              "Notas",
              textAlign: TextAlign.center,
              style: primaryTextStyle.copyWith(color: textGradeColor),
            ),
          ),
        ],
      ),
    ),
  );
}
