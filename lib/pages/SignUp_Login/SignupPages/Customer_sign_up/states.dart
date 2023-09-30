import 'package:flutter/cupertino.dart';

class CustomerSignupState{
  // controllers for login
  final loginEmailController = TextEditingController();
  final loginPasswordController = TextEditingController();

  // controllers for signUp
  final signUpEmailController = TextEditingController();
  final signUpNameController = TextEditingController();
  final signUpPasswordController = TextEditingController();
  final signUpPhoneController = TextEditingController();

  final signUpUserController = TextEditingController();

  // focus nodes for login
  final loginEmailFocus = FocusNode();
  final loginPasswordFocus = FocusNode();

  //focus nodes for signUp
  final signUpEmailFocus = FocusNode();
  final signUpPasswordFocus = FocusNode();
  final signUpUserFocus = FocusNode();
}