
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
  final ref = FirebaseFirestore.instance.collection('providers');
  final auth = FirebaseAuth.instance;

  void setLoginLoading(bool val){
    state.loginLoading.value = val;
  }

  Future<void> login(String email , String password) async{
    setLoginLoading(true);
    try{
      await auth.signInWithEmailAndPassword(email: email, password: password).then((value){
        Get.toNamed(AppRoutes.HomeScreen);
        setLoginLoading(false);
      }).onError((error, stackTrace){
        setLoginLoading(false);
        Snackbar.showSnackBar('Error', error.toString());
      });
    }catch(e){
      setLoginLoading(false);
      Snackbar.showSnackBar('Error', e.toString());
    }
  }
var obsecure = true.obs;
void togglePasswordVisibility() {
  obsecure.value = !obsecure.value;
}
}
