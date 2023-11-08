

import 'package:e_services/pages/SignUp_LoginPage/pages/ServiceProvider/Controllers/sign_up_contr.dart';
import 'package:get/get.dart';

import 'Controllers/forget_controller.dart';
import 'Controllers/login_contr.dart';



class ProviderSignupBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Provider_Signup_Controller>
      (() => Provider_Signup_Controller()); //inject Controller
  }
}


class ProviderLoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Provider_Login_Controller>
      (() => Provider_Login_Controller()); //inject Controller
  }
}
class Forget_SP_Bindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Forget_SP_Controller>(() => Forget_SP_Controller());
  }

}