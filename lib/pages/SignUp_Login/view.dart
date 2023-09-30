import 'package:e_services/pages/SignUp_Login/controller.dart';
import 'package:e_services/pages/SignUp_Login/pages/login_page.dart';
import 'package:e_services/pages/SignUp_Login/pages/sign_up_page.dart';
import 'package:e_services/res/component/login_image.dart';
import 'package:e_services/res/component/round_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_services/res/component/input_text_field.dart';

import '../../res/colors/color.dart';
import '../../res/component/sign_up_image.png.dart';


class SignupLoginView extends GetView<SignupLoginController>{
  SignupLoginView({Key? key}): super(key: key);
  final controller=Get.put<SignupLoginController>(SignupLoginController());
  final _controller=LoginPage();

  @override
  Widget build(BuildContext context) {
   final size=MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
      body:SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SignupImage(image:'assets/images/signup.png',
                 title: 'Welcome to E_Services ',),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                     // padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child:Form(
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomerSignUp(),
                            Container(
                              padding: EdgeInsets.all(5),
                              height: 70,
                              width:double.infinity,
                            child:  RoundButton(title: 'SignUp',textColor: Colors.white,
                                  onPress:(){}),),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Text('Already have an account?',
                                      style: TextStyle(fontSize: 22,),),
                                     ),
                                    TextButton(onPressed: (){},
                                      child:Text('Login',
                                        style: TextStyle(color:AppColors.primaryColor,fontSize: 25,fontWeight: FontWeight.bold),),),


                                ],
                              )


                          ],
                        ),

                      )
                    ),


                     ]
    ),
                     ),
    ),
    ));


  }
}
