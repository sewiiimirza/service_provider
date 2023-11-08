

import 'package:e_services/pages/SignUp_LoginPage/pages/Customer/Controllers/login_contr.dart';
import 'package:e_services/pages/SignUp_LoginPage/pages/Customer/Controllers/sign_up_contr.dart';
import 'package:get/get.dart';

import 'Controllers/forg_controller.dart';


class CustomerSignupBinding implements Bindings{
  @override
  void dependencies(){
    Get.lazyPut<Customer_Signup_Controller>(()=> Customer_Signup_Controller());//inject Controller



  }


}

class CustomerLoginBinding implements Bindings{
  @override
  void dependencies(){
    Get.lazyPut<Customer_Login_Controller>(()=> Customer_Login_Controller());//inject Controller



  }


}

class ForgetBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgetController>(() => ForgetController());
  }

}