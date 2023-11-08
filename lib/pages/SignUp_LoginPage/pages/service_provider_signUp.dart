import 'package:e_services/pages/SignUp_LoginPage/controller.dart';
import 'package:e_services/res/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../res/colors/color.dart';
import '../../../res/component/round_button.dart';
import '../../../res/component/sign_up_image.png.dart';
import '../../../utils/routes/route_name.dart';
import '../signup.dart';

class ServiceProviderSignUp extends GetView<Customer_Signup_Login_Controller> {
  ServiceProviderSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //   void Navigate;
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
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


              SPSignupImage(
                image: 'assets/images/sp_signup.png',
                title: 'Welcome to E_Services ',
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  // padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SignUp(),
                        Container(
                          padding: EdgeInsets.all(5),
                          height: 70,
                          width: double.infinity,
                          child: RoundButton(
                            title: 'Signup',
                            textColor: Colors.white,
                            onPress: () {

                            },
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                'Already have an account?',
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Get.to(AppRoutes.SP_Login_Screen);
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
            ]),
          ),
        ),
      ),
    );
  }
}
