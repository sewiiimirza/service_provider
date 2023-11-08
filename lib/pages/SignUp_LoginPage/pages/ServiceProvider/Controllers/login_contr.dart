
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_services/pages/SignUp_LoginPage/pages/Customer/cus_auth_repository.dart';
import 'package:e_services/pages/SignUp_LoginPage/pages/Customer/states.dart';
import 'package:e_services/res/component/snack_bar.dart';
import 'package:e_services/res/models/user_model.dart';
import 'package:e_services/utils/routes/route_name.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:get/get.dart';

class Provider_Login_Controller extends GetxController {
  Provider_Login_Controller();
  final state = SignupLoginState(); //not change over time

var obsecure = true.obs;
void togglePasswordVisibility() {
  obsecure.value = !obsecure.value;
}
}
