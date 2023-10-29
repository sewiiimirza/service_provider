import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/routes/route_name.dart';
import 'controller.dart';
class ScheduleView extends GetView<ScheduleController> {
  ScheduleView({super.key});

  final controller = Get.put<ScheduleController>(ScheduleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule Service'),
      ),
      body:SafeArea(
     child:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed(AppRoutes.DateTimePickerScreen);
              },
              child: Text('Select Date and Time'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(AppRoutes.LocationPickerScreen);
              },
              child: Text('Select Location on Map'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(AppRoutes.SuccessfulView);
              },
              child: Text("Confirm "),
            ),
          ],
        ),
      ),
    ));
  }
}