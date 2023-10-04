import 'package:e_services/pages/SignUp_LoginPage/login_page.dart';
import 'package:e_services/res/component/login_image.dart';
import 'package:e_services/res/component/round_button.dart';
import 'package:e_services/utils/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../res/colors/color.dart';

import '../controller.dart';

class Service_ProviderLoginView extends GetView<Provider_Signup_Login_Controller> {
  Service_ProviderLoginView({Key? key}) : super(key: key);
  final controller = Get.put<Provider_Signup_Login_Controller>(
      Provider_Signup_Login_Controller());

  @override
  Widget build(BuildContext context) {
    //   void Navigate;
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(children: [
             const SPLoginImage(
                 image:'assets/images/sp_login.png',
               title:'Login',
             ),
              SizedBox(height: 10,),

              Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        LoginPage(),
                        SizedBox(height: 5,),
                        Align(
                          alignment:Alignment.centerRight,
                          child: TextButton(onPressed: (){
                            Get.toNamed(AppRoutes.SP_Forget_Password_Screen);


                          }, child: Text('Forget Password ?',style: TextStyle(color:AppColors.primaryColor,fontSize: 22,fontWeight:  FontWeight.bold)),),
                        ),


                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          height: 70,
                          width: double.infinity,
                          child: RoundButton(
                              title: 'Login',
                              textColor: Colors.white,
                              onPress: () {
                                Get.toNamed(AppRoutes.SP_Login_Screen);
                              }),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                'Dont have an account?',
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Get.offAllNamed(AppRoutes.Service_P_UpScreen);
                              },
                              child: Text(
                                'Signup',
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
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
