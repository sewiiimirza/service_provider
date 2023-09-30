

import 'package:e_services/pages/SignUp_Login/SignupPages/Customer_sign_up/controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class CustomerSignupBinding implements Bindings{
  @override
  void dependencies(){
    Get.lazyPut<CustomerSignupController>(()=> CustomerSignupController());//inject Controller



  }


}