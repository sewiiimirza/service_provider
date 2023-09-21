import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:e_services/pages/Login/view.dart';
import 'package:e_services/res/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image(image: AssetImage('assets/images/logo.png')),
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          const  Text('E',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: AppColors.secondaryTextColor,
                  fontSize: 100,
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
]
    ),
    );
  }


}




