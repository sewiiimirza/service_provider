import 'package:e_services/res/colors/color.dart';
import 'package:e_services/res/component/onboarding_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'controller.dart';
class OnboardingView extends GetView <OnboardingController> {
  final controller = Get.put<OnboardingController>(OnboardingController());
  OnboardingView({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Stack(
        children:[
           PageView.builder(
              itemBuilder:(context,index){
            return Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                      controller.pages[index].image,
                  ),
                  SizedBox(height: 30,),
                  Text(
                     controller.pages[index].title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight:FontWeight.w700,color: AppColors.primaryTextColor)
              ),
                  SizedBox(height: 32,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 64.0),
                child:Text(
                      controller.pages[index].description,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize:23,fontWeight:FontWeight.w400,color: AppColors.primaryTextColor,

                      ),
                         ),



                ),
                ],
              ),

            );
    }),
          Row(
            children: [
              List.generate(controller.pages.length, (index) =>Container(
                height: 12,
                width: 12,
                decoration: BoxDecoration(
                  color: AppColors.secondaryTextColor,
                ),
              ),
              ),

            ],
          )
    ]
    ),
    );
        }


  }



