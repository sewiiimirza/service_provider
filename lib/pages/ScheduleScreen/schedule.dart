import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';
class ScheduleView extends GetView<ScheduleController> {
   ScheduleView({super.key});
  final controller = Get.put<ScheduleController>(ScheduleController());

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Shedule Screen")),
        ],
      ),
    );
  }
}



