import 'package:e_services/pages/SignUp_LoginPage/pages/Customer/states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';


class ForgetController extends GetxController {
  final state = ForgetState();

  ForgetController();

  var obsecure = true.obs;

  void togglePasswordVisibility() {
    obsecure.value = !obsecure.value;
  }
}