
import 'package:e_services/pages/SignUp_LoginPage/pages/Customer/Controllers/login_contr.dart';
import 'package:e_services/pages/SignUp_LoginPage/pages/ServiceProvider/Controllers/login_contr.dart';
import 'package:e_services/res/component/input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../../res/colors/color.dart';


class P_LoginPage extends GetView<Provider_Login_Controller> {
  P_LoginPage({Key? key}) : super(key: key);

  final controller = Get.put<Provider_Login_Controller>(Provider_Login_Controller());

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
            prefixIcon: Icon(Icons.email_outlined,size: 30,
              color: AppColors.primaryColor,),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                  style: BorderStyle.solid,color: Colors.grey.shade600),
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 28), // Increase this value
          ),
        ),

        // focNode: controller.state.loginEmailFocus,

        SizedBox(height: 10,),
        PasswordInputTextForm(
          obsecure:true,
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.text,
          contr: controller.state.loginPasswordController,
          focNode: controller.state.loginPasswordFocus,
          decoration: InputDecoration(
            hintText: 'Enter password',
            hintStyle:TextStyle(fontSize: 25,color:Colors.grey),
            prefixIcon: Icon(Icons.lock_open_outlined,size: 30,
              color: AppColors.primaryColor,),
            suffixIcon:Obx(() =>GestureDetector(
              onTap: () {
                controller.togglePasswordVisibility();
              },
              child:
              Icon(controller.obsecure.value
                  ? Icons.visibility :
              Icons.visibility_off,size: 30,),
            ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                  style: BorderStyle.solid,color: Colors.grey.shade600),
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 28), // Increase this value
          ),

        ),





      ],

    );
  }
}
