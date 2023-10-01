

import 'package:e_services/pages/SignUp_LoginPage/controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';


class ProviderSignupLoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Provider_Signup_Login_Controller>
      (() => Provider_Signup_Login_Controller()); //inject Controller
  }
}

class CustomerSignupLoginBinding implements Bindings{
  @override
  void dependencies(){
    Get.lazyPut<Customer_Signup_Login_Controller>(()=> Customer_Signup_Login_Controller());//inject Controller



  }


}