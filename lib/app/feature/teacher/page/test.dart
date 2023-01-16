import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/share/widgets/appbar_widget.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(),
      body: Center(child: 
      DottedBorder(
        strokeWidth: 2,
        color: Colors.red,
        dashPattern: const [4,4],
        child: Container(
          width: 100,
          height: 100,
          color: Colors.black12,
        ),
      ),),
    );
  }
}