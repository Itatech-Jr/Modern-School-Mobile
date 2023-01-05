import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/feature/activity/page/create_activity_page.dart';
import 'package:modern_school_mobile/app/feature/activity/provider/create_activity_controller.dart';

class CreateActivityModule extends StatefulWidget {
  const CreateActivityModule({super.key});

  @override
  State<CreateActivityModule> createState() => ModuleController();
}

class ModuleController extends State<CreateActivityModule> {
  late final CreateActivityController controller;

  @override
  void initState() {
    super.initState();
    controller = CreateActivityController();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (BuildContext context, Widget? child) => CreateActivityPage(
        controller: controller,
      ),
    );
  }
}
