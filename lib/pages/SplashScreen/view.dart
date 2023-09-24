import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:e_services/pages/SplashScreen/controller.dart';
import 'package:e_services/res/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SplashScreenView extends GetView<SplashController>{
  SplashScreenView({Key? key}): super(key: key);
  final controller = Get.put<SplashController>(SplashController());
  @override
  Widget build(BuildContext context) {
    controller.navigate();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image(image: AssetImage('assets/images/splash.png')),
          ),
          SizedBox(height: 10,),
          Container(
            height: 100,
            width: double.infinity,
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
            const  Text('E',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    // color: AppColors.secondaryTextColor,
                    color: Colors.black,
                      fontSize: 80,
                  fontWeight: FontWeight.w700)),
            AnimatedTextKit(
                  animatedTexts: [
                    RotateAnimatedText("Services",
                    textAlign: TextAlign.start,
                      textStyle: TextStyle(
                          color: AppColors.primaryTextColor,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),),
                    RotateAnimatedText("Home_Services",
                      textStyle: TextStyle(color: AppColors.primaryTextColor,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                  repeatForever: true,
                ),


    ]
             ),
          ),
]
    ),
    );
  }


}//view depends on controller



