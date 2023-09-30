
import 'package:e_services/res/component/input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../res/colors/color.dart';
import '../controller.dart';

class CustomerSignUp extends GetView<SignupLoginController> {
  CustomerSignUp({Key? key}) : super(key: key);

  final controller = Get.put<SignupLoginController>(SignupLoginController());
@override
  Widget build(BuildContext context) {
  return Form(

      child: Column(
          children: [
            Padding(
                padding:EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: NameInputTextForm(
                 textInputAction: TextInputAction.next,
                obsecure: false,
                keyboardType: TextInputType.text,
                 contr: controller.state.signUpUserController,

                decoration:InputDecoration(
                   hintText: 'UserName',
                  hintStyle:TextStyle(fontSize: 25,color:Colors.grey,),
                  prefixIcon: const Icon(Icons.person,size: 30,
                 color: AppColors.primaryColor, ),
                 border: OutlineInputBorder(
                   borderSide: const BorderSide(
                       width: 2.0,
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

                  decoration:const InputDecoration(
                    hintText:  '@ Enter your  Email',
                    hintStyle:TextStyle(fontSize: 25,color:Colors.grey,),
                prefixIcon: Icon(
                  Icons.email_outlined,size: 30,
                  color: AppColors.primaryColor),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2.0,
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
                decoration:const InputDecoration(
                  hintText:   ' #Enter your PhoneNo',
                  hintStyle:TextStyle(fontSize: 25,
                    color:Colors.grey,),
                  prefixIcon: Icon(Icons.phone,
                    size: 30, color:AppColors.primaryColor,),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(

                      width: 2.0,
                      style: BorderStyle.solid,),
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
                obsecure: false,
                keyboardType: TextInputType.emailAddress,
                // icon: Icons.email_outlined,
                contr: controller.state.signUpEmailController,
                focNode: controller.state.signUpEmailFocus, 

                 decoration:InputDecoration(
                   hintText: ' Enter your password',
                     hintStyle:TextStyle(fontSize: 25,color:Colors.grey,),
                     prefixIcon: Icon(Icons.lock_open_outlined,size: 30,
                       color: AppColors.primaryColor,),
                     suffixIcon: Icon(Icons.visibility_sharp,size: 30,),
                     border: OutlineInputBorder(
                       borderSide: BorderSide(
                         width: 2.0,
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
