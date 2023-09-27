

import 'package:e_services/pages/SignUp_Login/controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class SignupLoginBinding implements Bindings{
  @override
  void dependencies(){
    Get.lazyPut<SignupLoginController>(()=> SignupLoginController());//inject Controller



  }


}