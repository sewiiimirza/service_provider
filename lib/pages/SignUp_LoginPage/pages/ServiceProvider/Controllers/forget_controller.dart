import 'package:e_services/pages/SignUp_LoginPage/pages/Customer/states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';


class Forget_SP_Controller extends GetxController{
  final state = ForgetState();

  Forget_SP_Controller();


var obsecure = true.obs;
void togglePasswordVisibility() {
  obsecure.value = !obsecure.value;

}
}