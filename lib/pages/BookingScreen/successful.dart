
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
      appBar: AppBar(
        title: Text('Booking Successfully',
          style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.bold,
            color:Colors.white ,
          ),
        ),
        backgroundColor:AppColors.primaryColor,
        //  elevation: 0,

      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image(image: AssetImage('assets/images/successful.png')),
            ),
            SizedBox(height: 10,),
            Container(
              height: 120,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: const Text(' Booking \n Successfully',
                        style: TextStyle(
                          // color: AppColors.secondaryTextColor,
                            color: AppColors.primaryColor,
                            fontSize: 40,
                            fontWeight: FontWeight.w700),),
                    ),
                  ]
              ),
            ),
          ]),
    );
  }
}