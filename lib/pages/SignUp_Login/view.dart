import 'package:e_services/pages/SignUp_Login/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_services/res/component/input_text_field.dart';


class SignupLoginView extends GetView<SignupLoginController>{
  SignupLoginView({Key? key}): super(key: key);
  final controller=Get.put<SignupLoginController>(SignupLoginController());


  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30.0 -10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/images/login.png',),
                  height:size.height*0.4,
              ),
               Container(
                   child: Column(
                     children: [
                       NameInputTextForm(
                          descrip: 'Full Name',
                           keyboardType: TextInputType.name,
                           obsecure: false),
                       InputTextForm(
                   contr: controller.state.signUpEmailController,
                       focNode:controller.state.signUpEmailFocus,
                         obsecure: false,
                           keyboardType: TextInputType.emailAddress,

                           descrip: '@Enter your email',
                           // focNode: controller.state.loginEmailFocus,
                         ),
                       PhoneNoInputTextForm(
                           descrip: '###########',
                           keyboardType:TextInputType.number,
                           obsecure:false),
                       PasswordInputTextForm(
                           contr: controller.state.signUpPasswordController,
                           descrip:'Enter your password',
                           focNode: controller.state.signUpPasswordFocus,
                           keyboardType: TextInputType.visiblePassword,
                           obsecure: true),
               ]
),

        ),
                          ]

               ),


               ),
             ),


        ),

      );

  }
}
