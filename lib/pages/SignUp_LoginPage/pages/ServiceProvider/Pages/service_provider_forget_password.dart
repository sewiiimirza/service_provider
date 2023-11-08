
import 'package:e_services/pages/SignUp_LoginPage/pages/Customer/Session_widgets/forget_password.dart';
import 'package:e_services/pages/SignUp_LoginPage/pages/ServiceProvider/Controllers/forget_controller.dart';
import 'package:e_services/pages/SignUp_LoginPage/pages/ServiceProvider/Controllers/sign_up_contr.dart';
import 'package:e_services/res/component/round_button.dart';
import 'package:e_services/utils/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../res/colors/color.dart';
import '../../../../../res/component/sign_up_image.png.dart';

import '../../Customer/Controllers/forg_controller.dart';
import '../../Customer/Controllers/sign_up_contr.dart';


class SP_Forget_Password extends GetView<Forget_SP_Controller>{
  SP_Forget_Password({Key? key}): super(key: key);
  final controller=Get.put<Forget_SP_Controller>(Forget_SP_Controller());


  @override
  Widget build(BuildContext context) {
    //   void Navigate;
    final size=MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body:SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                  children: [
                    Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(AppRoutes.WelcomeScreen);
                            },
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                child: Icon(Icons.arrow_back, color: Colors
                                    .blueAccent, size: 40.0,)

                            ),
                          ),
                        ]
                    ),

                   ForgetPasswordImage(image: 'assets/images/forget_password.png',
                     ),
                    Container(
                       margin: EdgeInsets.symmetric(vertical: 20),
                         padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: Form(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ForgetPassword(),
                              SizedBox(height: 25,),
                              Container(
                                padding: EdgeInsets.all(5),
                                height: 80,
                                width: double.infinity,
                                child: RoundButton(
                                    title: 'Forget Password', textColor: Colors.white,
                                    onPress: () {
                                    }),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Text('Already have an account?',
                                      style: TextStyle(fontSize: 22,),),
                                  ),
                                  TextButton(onPressed: () {
                                    Get.offAllNamed(AppRoutes.Service_P_UpScreen);
                                  },
                                    child: Text('SignUp',
                                      style: TextStyle(
                                          color: AppColors.primaryColor,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),),),


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























































































































































































































































