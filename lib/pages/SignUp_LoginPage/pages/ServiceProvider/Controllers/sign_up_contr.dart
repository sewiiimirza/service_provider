
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_services/pages/SignUp_LoginPage/pages/Customer/cus_auth_repository.dart';
import 'package:e_services/pages/SignUp_LoginPage/pages/Customer/states.dart';
import 'package:e_services/pages/SignUp_LoginPage/pages/ServiceProvider/states.dart';
import 'package:e_services/res/component/snack_bar.dart';
import 'package:e_services/utils/routes/route_name.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:get/get.dart';

import '../../../../../res/models/prov_model.dart';

class Provider_Signup_Controller extends GetxController {
  Provider_Signup_Controller();


  static Provider_Signup_Controller get instance=>Get.find();
  // final state = SignupLoginState(); //not change over time
  final state = SignupLoginStateProvider();
  final ref= FirebaseFirestore.instance.collection('providers');
  final auth=FirebaseAuth.instance;

  void setLoading(bool val) {
    state.loading.value = val;
  }
    Future <void> registerProvider (String email,String password,
        ProviderModel provider)async {
      setLoading(true);
      String id = DateTime
          .now()
          .microsecondsSinceEpoch
          .toString();
      try {
        await auth.createUserWithEmailAndPassword(
            email: email, password: password).then((value) {
          ref.doc(id).set(provider.toJson()).then((value) {
            setLoading(false);
            Snackbar.showSnackBar("Successful", 'Account Created');
            Get.offAllNamed(AppRoutes.P_ProfileView);
          }).onError((error, stackTrace) {
            setLoading(false);
            Snackbar.showSnackBar('Error', error.toString());
          });
        })
            .onError((error, stackTrace) {
          setLoading(false);
          Snackbar.showSnackBar('Error', error.toString());
        });
      } catch (e) {

      }
    }

  var obsecure = true.obs;
  void togglePasswordVisibility() {
    obsecure.value = !obsecure.value;
    }


  }
