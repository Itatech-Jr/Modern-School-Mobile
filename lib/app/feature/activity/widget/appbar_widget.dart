import 'package:flutter/material.dart';

import '../../../share/colors.dart';

AppBar appbarWidget() {
  return AppBar(
    actions: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Aluno",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
          ),
          SizedBox(width: 5),
          CircleAvatar(
            child: Icon(Icons.person),
          )
        ],
      )
    ],
    centerTitle: true,
    title: Image.asset("assets/img/logo.png", height: 27),
    backgroundColor: primaryColor,
  );
}
