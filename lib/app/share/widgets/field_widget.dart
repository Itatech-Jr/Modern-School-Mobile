import 'package:flutter/material.dart';

Widget fieldWidget({required Widget child, double? width}) {
  return Container(
    width: width,
    padding: const EdgeInsets.all(5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: Colors.grey, width: 1),
    ),
    child: child,
  );
}
