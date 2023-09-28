
import 'dart:core';

import 'package:e_services/pages/Onboarding/states.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../res/component/onboarding_pages.dart';
import '../Welcome/view.dart';



class OnboardingController extends GetxController{
 OnboardingController();
 final state = OnboardingState;
 var  currentPage = 0.obs;
 bool get isLastPage=> currentPage.value== pages.length-1;
 var  pageController=PageController();


  forwardAction() {
    if (isLastPage){
      Get.offAll(WelcomeView());
    } else
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);

  }

 List<OnboardingPages>pages=[

   OnboardingPages( 'assets/images/onboarding1.png','Quick and easy Booking',
     'Now you can book your services \n any time right from your mobile',),

     OnboardingPages('assets/images/onboarding2.png','Customer satisfaction is our top priority','We provide professional Services\n'
       'at a friendly price',),
   OnboardingPages('assets/images/onboarding3.png','Fast Services',
       'Services will be done quickly ',),
 ];





  @override
 void Navigate(){
   Future.delayed(Duration(milliseconds: 300),()=>Get.offAll(WelcomeView()));
 }//used for navigation and routing things

}//
// now controller and state are called from UI






