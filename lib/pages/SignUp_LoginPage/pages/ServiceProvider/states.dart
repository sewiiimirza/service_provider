import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupLoginState{
  // controllers for login
  final loginEmailController = TextEditingController();
  final loginPasswordController = TextEditingController();

  // controllers for signUp
  final signUpNameController = TextEditingController();
  final signUpEmailController = TextEditingController();
  final signUpPasswordController = TextEditingController();
  final signUpPhoneController = TextEditingController();

  final signUpUserController = TextEditingController();

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