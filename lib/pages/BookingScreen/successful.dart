
import 'package:flutter/material.dart';
import '../../res/colors/color.dart';
import 'controller.dart';
import 'package:get/get.dart';
class SuccessfulView extends GetView<SuccessfulController> {
  SuccessfulView({Key? key}) : super(key: key);
  final controller = Get.put<SuccessfulController>(SuccessfulController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image(image: AssetImage('assets/images/successful.png')),
            ),
            SizedBox(height: 10,),
            Container(
              height: 100,
              width: double.infinity,
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(' Booking Successfully',
                      style: TextStyle(
                        // color: AppColors.secondaryTextColor,
                          color: AppColors.primaryColor,
                          fontSize: 80,
                          fontWeight: FontWeight.w700),),
                  ]
              ),
            ),
          ]),
    );
  }
}