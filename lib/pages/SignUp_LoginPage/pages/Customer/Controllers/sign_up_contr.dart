

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_services/pages/SignUp_LoginPage/pages/Customer/cus_auth_repository.dart';
import 'package:e_services/pages/SignUp_LoginPage/pages/Customer/states.dart';
import 'package:e_services/res/component/snack_bar.dart';
import 'package:e_services/res/models/user_model.dart';
import 'package:e_services/utils/routes/route_name.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:get/get.dart';

class Customer_Signup_Controller extends GetxController {
  Customer_Signup_Controller();

  static Customer_Signup_Controller get instance => Get.find();
  final state = SignupLoginState(); //not change over time
  final ref = FirebaseFirestore.instance.collection('customers');
  final auth = FirebaseAuth.instance;

  void setLoading(bool val){
    state.loading.value = val;
  }

  Future<void> registerUser(String email, String password,
      UserModel user) async {
    setLoading(true);
    String id = DateTime
        .now()
        .microsecondsSinceEpoch
        .toString();
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password)
          .then((value) {
        ref.doc(id).set(user.toJson()).then((value) {
          setLoading(false);
          Snackbar.showSnackBar("Successful", 'Account Created');
          Get.offAllNamed(AppRoutes.NavigationMenu);
        }).onError((error, stackTrace) {
          setLoading(false);
          Snackbar.showSnackBar("Error", error.toString());
        });
      })
          .onError((error, stackTrace) {
        setLoading(false);
        Snackbar.showSnackBar("Error", error.toString());
      });
    } catch (e) {

    }
  }

//now controller and state are called from UI
  var obsecure = true.obs;

  void togglePasswordVisibility() {
    obsecure.value = !obsecure.value;
  }
}