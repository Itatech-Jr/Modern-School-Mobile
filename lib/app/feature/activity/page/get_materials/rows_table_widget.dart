import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modern_school_mobile/app/share/styles/colors.dart';

Widget rowsTableWidget({required Map<int, dynamic> valueRows}){
  return Container(
    decoration: BoxDecoration(border: Border(top: BorderSide(color: primaryColor.shade100, width: 1))),
    child: Row(children: [
      for (var value in valueRows.entries) ...[
        Expanded(
            flex: value.value[0],
            child: Text(
              value.value[1],
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold),
            )),
      ],
      // Expanded(
      //   flex: 2,
      //   child: IconButton(
      //       icon: const FaIcon(FontAwesomeIcons.penToSquare),
      //       color: const Color(0XFF1351B4),
      //       padding: EdgeInsets.zero,
      //       onPressed: () => Null),
      // ),
      // Expanded(
      //   flex: 2,
      //   child: IconButton(
      //       icon: const FaIcon(FontAwesomeIcons.penToSquare),
      //       color: const Color(0XFF1351B4),
      //       padding: EdgeInsets.zero,
      //       onPressed: () => Null),
      // ),
    ]),
  );
}