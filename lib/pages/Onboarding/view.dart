
import 'dart:ffi';

import 'package:e_services/pages/Onboarding/index.dart';
import 'package:e_services/res/component/onboarding_page1.dart';
import 'package:e_services/res/component/onboarding_page2.dart';
import 'package:e_services/res/component/onboarding_page3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class OnboardingView extends GetView<OnboardingController>{
  OnboardingView({Key? key}): super(key: key);
  final obcontroller=OnboardingController();
  final state=OnboardingState();
  @override
  Widget build(BuildContext context) {
        return Scaffold(
            body:SafeArea(
              child: Stack(
                alignment: Alignment.center,
              children:[
                        LiquidSwipe(
                        pages:obcontroller.pages,
                          enableSideReveal: true,
                          liquidController:obcontroller.controller,
                          onPageChangeCallback:state.OnPageChangeCallback,
                          slideIconWidget: Icon(Icons.arrow_back_ios),

                        ),
                        Positioned(
                          bottom: 60.0,
                            child: OutlinedButton(
                              onPressed:() =>obcontroller.animateToNextSlide(),
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(color: Colors.black),
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(20),
                                onPrimary: Colors.white,
                              ),
                              child: Container(
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.cyan,shape: BoxShape.circle,
                                ),
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            )),
                        Positioned(
                          top: 50,
                          right: 20,
                          child: TextButton(
                            onPressed: ()=>obcontroller.skip(),
                            child: Text('skip',style: TextStyle(color: Colors.grey,fontSize:50,fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Obx(
                          ()=>Positioned(
                          bottom: 20,
                          child: AnimatedSmoothIndicator(
                              count: 3,
                              activeIndex:state.currentPage.value,
                            effect: WormEffect(
                              activeDotColor: Colors.indigo,
                              dotHeight: 10.0,
                            )),
                        ),
                        )],
                ),
            ),

          );
      }





  }

