

import 'package:e_services/pages/SignUp_Login/states.dart';
import 'package:get/get.dart';

import '../../utils/routes/route_name.dart';

class SignupLoginController extends GetxController{
  final  state = SignupLoginState();//not change over time
  SignupLoginController();


  // void navigate(){
  //
  //   Future.delayed(const Duration(seconds: 3),()=>Get.offAllNamed(AppRoutes.OnboardingScreen));
  // }//used for navigation and routing things

}//now controller and state are called from UI
