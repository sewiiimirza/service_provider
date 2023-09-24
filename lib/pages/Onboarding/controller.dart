import 'package:e_services/pages/Onboarding/states.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../res/component/onboarding_page1.dart';
import '../../res/component/onboarding_page2.dart';
import '../../res/component/onboarding_page3.dart';
import '../SignUp_Login/view.dart';

class OnboardingController extends GetxController{
 OnboardingController();
  final state = OnboardingState;
 final controller= LiquidController();
 skip()=> controller.jumpToPage(page: 2);
 animateToNextSlide() {
   int nextPage = controller.currentPage + 1;
   controller.animateToPage(page: nextPage);
 }


 final pages=[
   OnboardingScreen1(image:'assets/images/onboarding1.png',
     title: 'Quick and Easy\n'
         'Booking',

   ),
   OnboardingScreen2(image: 'assets/images/onboarding2.png', title:'We provide professional Services\n'
       'at a friendly price',),
   OnboardingScreen3(image:'assets/images/onboarding3.png', title:'Fast Services\n'
       'Services will be done quickly ',),
 ];


  @override
  void Navigate(){
    Future.delayed(Duration(seconds: 3),()=>Get.offAll(SignupLoginView()));
  }//used for navigation and routing things

}//
// now controller and state are called from UI



