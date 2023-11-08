
import 'package:e_services/pages/SignUp_LoginPage/pages/ServiceProvider/Controllers/forget_controller.dart';
import 'package:e_services/res/component/input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../res/colors/color.dart';

class ForgetPassword extends GetView<Forget_SP_Controller> {
  ForgetPassword({Key? key}) : super(key: key);

  final controller = Get.put<Forget_SP_Controller>(Forget_SP_Controller());

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
                    style: BorderStyle.solid,
                    color: Colors.grey.shade700),
                borderRadius: BorderRadius.all(Radius.circular(35)),
              ),

              contentPadding: EdgeInsets.symmetric(vertical: 25), // Increase this value
            ),
            //  ),
          ),
          // focNode: controller.state.loginEmailFocus,
        ]
    );
  }
}