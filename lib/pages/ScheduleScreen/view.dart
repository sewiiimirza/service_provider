import 'package:e_services/res/component/confirm_person_data.dart';
import 'package:e_services/res/component/round_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/colors/color.dart';
import '../../utils/routes/route_name.dart';
import 'controller.dart';
class ScheduleView extends GetView<ScheduleController> {
  ScheduleView({super.key,});

  final controller = Get.put<ScheduleController>(ScheduleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Schedule ',
            style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: AppColors.primaryColor,
          //  elevation: 0,

        ),

      body:SafeArea(
     child:SingleChildScrollView(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PersonData(),
            SizedBox(height: 10,),
           // RoundButton(title: "Select Date and time",
           //     onPress:()=>  Get.toNamed(AppRoutes.DateTimePickerScreen),
           // ) ElevatedButton(
           //    onPressed: () {
           //
           //    },
           //    child: Text('Select Date and Time'),
          //  ),
            SizedBox(height:10,),
       Container(height: 50,
       width: 400,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(200),
       ),
       child: RoundButton(title: "Select Location on Map",
           onPress:()=>  Get.toNamed(AppRoutes.LocationPickerScreen),
         ),
       ),

            // ElevatedButton(
            //   onPressed: () {
            //     Get.toNamed(AppRoutes.LocationPickerScreen);
            //   },
            //   child: Text('Select Location on Map'),

            // ElevatedButton(
            //   onPressed: () {
            //     Get.toNamed(AppRoutes.SuccessfulView);
            //   },
            //   child: Text("Confirm "),
            SizedBox(height: 30,),
            RoundButton(title: "Confirm ",
              onPress:()=>  Get.toNamed(AppRoutes.SuccessfulView),

            ),
          ],
        ),
      ),
    ));
  }
}