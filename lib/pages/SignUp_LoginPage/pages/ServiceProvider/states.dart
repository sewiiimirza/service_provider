import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupLoginState{
  // controllers for login
  final loginEmailController = TextEditingController();
  final loginPasswordController = TextEditingController();
  Rx<bool> loginLoading=false.obs;

  // controllers for signUp
  final signUpNameController = TextEditingController();
  final signUpEmailController = TextEditingController();
  final signUpPasswordController = TextEditingController();
  final signUpPhoneController = TextEditingController();

  final signUpUserController = TextEditingController();
  Rx<bool> loading=false.obs;

  // focus nodes for login
  final loginEmailFocus = FocusNode();
  final loginPasswordFocus = FocusNode();// focus nodes for login


  //focus nodes for signUp
  final signUpEmailFocus = FocusNode();
  final signUpPasswordFocus = FocusNode();
  final signUpUserFocus = FocusNode();

  }



class ForgetState {

  // focus nodes for login
  final loginEmailFocus = FocusNode();
  final loginPasswordFocus = FocusNode();
// controllers for login
  final loginEmailController = TextEditingController();
  final loginPasswordController = TextEditingController();


}