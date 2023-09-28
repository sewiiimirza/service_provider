
import 'dart:core';
import 'package:e_services/pages/Onboarding/states.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../res/component/onboarding_pages.dart';


class OnboardingController extends GetxController{
 OnboardingController();
  final state = OnboardingState;
  var  pageController=PageController();


  forwardAction(){
    pageController.nextPage(duration:300.milliseconds, curve: Curves.ease);
}

 List<OnboardingPages>pages=[

   OnboardingPages( 'assets/images/onboarding1.png','Quick and easy Booking',
     'Now you can book your services \n any time right from your mobile',),

     OnboardingPages('assets/images/onboarding2.png','Customer satisfaction is our top priority','We provide professional Services\n'
       'at a friendly price',),
   OnboardingPages('assets/images/onboarding3.png','Fast Services',
       'Services will be done quickly ',),
 ];





 //  @override
 // void Navigate(){
 //   Future.delayed(Duration(seconds: 3),()=>Get.offAll(Welcome()));
 // }//used for navigation and routing things

}//
// now controller and state are called from UI






