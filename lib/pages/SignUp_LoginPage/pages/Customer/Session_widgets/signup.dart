


import 'package:e_services/pages/SignUp_LoginPage/pages/Customer/Controllers/forg_controller.dart';
import 'package:e_services/res/component/input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../res/colors/color.dart';
import '../Controllers/sign_up_contr.dart';


class SignUp extends GetView<Customer_Signup_Controller> {
  SignUp({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
  final controller = Get.put<Customer_Signup_Controller>(Customer_Signup_Controller());
  final _formKey =GlobalKey<FormState>();
  return Form(
   key: _formKey,
    child: Column(
          children: [
            Padding(
                padding:EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: NameInputTextForm(
                 textInputAction: TextInputAction.next,
                obsecure: false,
                keyboardType: TextInputType.text,
                 contr: controller.state.signUpNameController,
                decoration:InputDecoration(
                   hintText: 'UserName',
                  hintStyle:TextStyle(fontSize: 25,color:Colors.grey,),
                  prefixIcon: const Icon(Icons.person,size: 30,
                 color: AppColors.primaryColor, ),
                 border: OutlineInputBorder(
                   borderSide: BorderSide(
                       width: 2.0,
                    color: Colors.grey.shade600,
                    style:BorderStyle.solid ),
                  borderRadius: BorderRadius.circular(25),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 25), // Increase this value
              ),
               ),
            ),
            Padding(
                padding:EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: InputTextForm(

                  // textInputAction: TextInputAction.next,
                  obsecure: false,
                  keyboardType: TextInputType.emailAddress,
                  // icon: Icons.email_outlined,
                  contr: controller.state.signUpEmailController,
                  focNode: controller.state.signUpEmailFocus,
                  textInputAction:TextInputAction.next, 

                  decoration: InputDecoration(
                    hintText:  '@ Enter your  Email',
                    hintStyle:TextStyle(fontSize: 25,color:Colors.grey,),
                prefixIcon: Icon(
                  Icons.email_outlined,size: 30,
                  color: AppColors.primaryColor),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2.0,
                    color:Colors.grey.shade600,
                    style: BorderStyle.solid,),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                    contentPadding: EdgeInsets.symmetric(vertical: 25), // Increase this value

              ),

                ),
              ),


    // focNode: controller.emailFocus,


          Padding(
            padding:EdgeInsets.symmetric(horizontal: 10,vertical:10),
            child: PhoneNoInputTextForm(
                 textInputAction: TextInputAction.next,
                obsecure: false,
                keyboardType: TextInputType.emailAddress,
                contr:controller.state.signUpPhoneController,
                decoration: InputDecoration(
                  hintText:   ' #Enter your PhoneNo',
                  hintStyle:TextStyle(fontSize: 25,
                    color:Colors.grey,),
                  prefixIcon: Icon(Icons.phone,
                    size: 30, color:AppColors.primaryColor,),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      style: BorderStyle.solid,color:Colors.grey.shade600,),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 25), // Increase this value
                  ),
                ),

              ),

            Padding(
              padding:EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: PasswordInputTextForm(
                textInputAction: TextInputAction.next,
                obsecure:true,
                keyboardType: TextInputType.emailAddress,
                // icon: Icons.email_outlined,
                contr: controller.state.signUpPasswordController,
                focNode: controller.state.signUpPasswordFocus,

                 decoration:InputDecoration(
                   hintText: ' Enter your password',
                     hintStyle:TextStyle(fontSize: 25,color:Colors.grey,),
                     prefixIcon: Icon(Icons.lock_open_outlined,size: 30,
                       color: AppColors.primaryColor,),
                     suffixIcon: GestureDetector(
                     onTap: () {
                     controller.togglePasswordVisibility();
                        },
                child: Icon(
                 controller.obsecure.value ? Icons.visibility : Icons.visibility_off,size: 30,),
  ),
                     border: OutlineInputBorder(
                       borderSide: BorderSide(
                         width: 2.0,
                        color: Colors.grey.shade600,
                        style: BorderStyle.solid,
                      ),
                        borderRadius: BorderRadius.circular(25),
                       ),
                  contentPadding: EdgeInsets.symmetric(vertical: 25), // Increase this value

                     ),
                   ),

                 ),

          ]
      ),
    );
}
}
