import 'package:flutter/material.dart';

import '../styles/colors.dart';


AppBar appbarWidget() {
  return AppBar(
    actions: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
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
