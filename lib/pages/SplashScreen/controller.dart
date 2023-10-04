

import 'package:e_services/pages/SplashScreen/states.dart';
import 'package:get/get.dart';

import '../../utils/routes/route_name.dart';
import '../Onboarding/view.dart';

class SplashController extends GetxController{
  final  state = SplashScreenState();//not change over time
  SplashController();


void navigate(){

 Future.delayed(const Duration(seconds: 3),()=>Get.offAllNamed(AppRoutes.OnboardingScreen));
  }//used for navigation and routing things

}//now controller and state are called from UI
