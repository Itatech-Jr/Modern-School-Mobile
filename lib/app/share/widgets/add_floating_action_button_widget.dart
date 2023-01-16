import 'package:flutter/material.dart';
import '../styles/colors.dart';

FloatingActionButton addFloatingActionButtonWidget({VoidCallback? onPressed, Color? backgroundColor}) {
  return FloatingActionButton(
    onPressed: onPressed,
    shape: CircleBorder(side: BorderSide(color: primaryColor, width: 2)),
    backgroundColor: Colors.white,
    child: Icon(
      Icons.add,
      size: 30,
      color: primaryColor,
    ),
  );
}
