

import 'package:e_services/pages/SignUp_Login/SignupPages/Customer_sign_up/states.dart';
import 'package:e_services/pages/SignUp_Login/SignupPages/customer_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../utils/routes/route_name.dart';

class CustomerSignupController extends GetxController{
  final  state = CustomerSignupState();//not change over time
  CustomerSignupController();
  var obsecure=true.obs;
  void togglePasswordVisibility() {
    obsecure.value = !obsecure.value;
  }

// void Navigate(){
//   Get.offAll(SignupLoginView());

   }//used for navigation and routing things

//}//now controller and state are called from UI
