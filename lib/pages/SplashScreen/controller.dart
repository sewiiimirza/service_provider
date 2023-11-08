

import 'package:e_services/pages/SplashScreen/states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../utils/routes/route_name.dart';
import '../Onboarding/view.dart';

class SplashController extends GetxController{
  final  state = SplashScreenState();//not change over time
  SplashController();
  final auth = FirebaseAuth.instance;


void navigate() async{

  if( await auth.currentUser == null){

    Future.delayed(const Duration(seconds: 5),()=>Get.offAllNamed(AppRoutes.OnboardingScreen));
  }else {
    Future.delayed(const Duration(seconds: 5),()=>Get.offAllNamed(AppRoutes.HomeScreen));
  }


  }//used for navigation and routing things

}//now controller and state are called from UI
