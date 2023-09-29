
import 'package:e_services/res/component/input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../res/colors/color.dart';
import '../controller.dart';

class LoginPage extends GetView<SignupLoginController> {
  LoginPage({Key? key}) : super(key: key);

  final controller = Get.put<SignupLoginController>(SignupLoginController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InputTextForm(
          textInputAction: TextInputAction.next,
          obsecure: false,
          keyboardType: TextInputType.emailAddress,
          contr: controller.state.loginEmailController,
          focNode: controller.state.loginEmailFocus,

          decoration: InputDecoration(
            hintText: 'Enter your email',
            hintStyle:TextStyle(fontSize: 25,color:Colors.grey,),
            prefixIcon: Icon(Icons.lock_open_outlined,size: 30,
              color: AppColors.primaryColor,),
            border: OutlineInputBorder(
              borderSide: BorderSide(
             style: BorderStyle.solid,),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          // focNode: controller.state.loginEmailFocus,
        ),

    SizedBox(height: 10,),
        Padding(
          padding: EdgeInsets.only(top:9.0,bottom: 7.0),
          child: PasswordInputTextForm(
            obsecure: true,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.text,
            contr: controller.state.loginPasswordController,
            focNode: controller.state.loginPasswordFocus,
            decoration:const  InputDecoration(
             hintText: 'Enter password',
    hintStyle:TextStyle(fontSize: 25,color:Colors.grey,),
    prefixIcon: Icon(Icons.lock_open_outlined,size: 30,
    color: AppColors.primaryColor,),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  style: BorderStyle.solid,),
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 30), // Increase this value
            ),

          ),
        ),


      ],

    );
  }
}
