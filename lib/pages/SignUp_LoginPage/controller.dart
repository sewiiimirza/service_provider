

import 'package:e_services/pages/SignUp_LoginPage/states.dart';
import 'package:e_services/res/component/sign_up_button.dart';
import 'package:e_services/utils/routes/route_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Provider_Signup_Login_Controller extends GetxController{
  Provider_Signup_Login_Controller();
  final  state = SignupLoginState();//not change over time
}

class Customer_Signup_Login_Controller extends GetxController {
  final state = SignupLoginState(); //not change over time
  Customer_Signup_Login_Controller();
  static Customer_Signup_Login_Controller get instance=>Get.find();
   //TextFields controller to get data from textFields
  // final email=TextEditingController();
  // final password=TextEditingController();
  // final user_name=TextEditingController();
  // final phoneNo=TextEditingController();
 // call this function from design &it will do the rest
  void registerUser(String email,String password){

  }
 var obsecure=true.obs;
  void togglePasswordVisibility() {
    obsecure.value = !obsecure.value;
  }





//
// void navigate() {
//   Future.delayed(const Duration(milliseconds: 300), () =>
//       Get.offAllNamed(AppRoutes.NavigationMenu));
//
// }//used for navigation and routing things

}//now controller and state are called from UI