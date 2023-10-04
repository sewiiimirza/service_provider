

import 'package:e_services/pages/SignUp_LoginPage/states.dart';
import 'package:e_services/utils/routes/route_name.dart';
import 'package:get/get.dart';

class Provider_Signup_Login_Controller extends GetxController{
  Provider_Signup_Login_Controller();
  final  state = SignupLoginState();//not change over time
}

class Customer_Signup_Login_Controller extends GetxController {
  final state = SignupLoginState(); //not change over time
  Customer_Signup_Login_Controller();
 var obsecure=true.obs;
  void togglePasswordVisibility() {
    obsecure.value = !obsecure.value;
  }






void Navigate() {
  Future.delayed(const Duration(seconds: 3), () =>
      Get.offAllNamed(AppRoutes.HomeScreen));

}//used for navigation and routing things

}//now controller and state are called from UI