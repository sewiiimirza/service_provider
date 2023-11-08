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
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Center(
              child: Image(image: AssetImage('assets/images/splash.png'),fit: BoxFit.fill,),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 100,
              width: double.infinity,
              child: Row(
                  children: [
              const  Text('E',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      // color: AppColors.secondaryTextColor,
                      color: Colors.black,
                        fontSize: 65,
                    fontWeight: FontWeight.w700)),
              AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText("Services",
                      duration: Duration(seconds: 1),
                      textAlign: TextAlign.start,
                        textStyle: TextStyle(
                            color: AppColors.primaryTextColor,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),),
                      RotateAnimatedText("Home_Services",
                        duration: Duration(seconds: 1),
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
          ),
]
    ),
    );
  }


}//view depends on controller



