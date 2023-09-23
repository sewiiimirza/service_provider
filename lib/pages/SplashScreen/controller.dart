import 'package:e_services/pages/OnboardingScreens/view.dart';
import 'package:e_services/pages/SignUp_Login/view.dart';
import 'package:e_services/pages/SplashScreen/states.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{
  SplashController();
  final state= SplashState;//not change over time

  @override
void onReady(){
    super.onReady();
   Future.delayed(Duration(seconds: 3),()=>Get.offAll(OnboardingView()));
  }//used for navigation and routing things

}//now controller and state are called from UI
