import 'package:flutter/material.dart';
import '../../../share/styles/text_style.dart';

Widget card_blue(Size size,
    [String text1 = '',
    String text2 = '',
    String text3 = '',
    String text4 = '',
    String text5 = '']) {
  return SizedBox(
    height: 45,
    child: Card(
      color: Color.fromRGBO(184, 209, 247, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            child: Text(
              text1,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(19, 81, 180, 1),
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.16,
            child: Text(
              text2,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(19, 81, 180, 1),
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.37,
            child: Text(
              text3,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(19, 81, 180, 1),
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.10,
            child: Text(
              text4,
              textAlign: TextAlign.center,
              overflow: TextOverflow.fade,
              style: TextStyle(
                color: Color.fromRGBO(19, 81, 180, 1),
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.22,
            child: Text(
              text5,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(19, 81, 180, 1),
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
