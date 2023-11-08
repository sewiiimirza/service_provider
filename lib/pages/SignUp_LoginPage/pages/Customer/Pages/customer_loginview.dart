import 'package:e_services/pages/SignUp_LoginPage/pages/Customer/Session_widgets/login_page.dart';
import 'package:e_services/res/component/login_image.dart';
import 'package:e_services/res/component/round_button.dart';
import 'package:e_services/res/component/snack_bar.dart';
import 'package:e_services/utils/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../res/colors/color.dart';

import '../Controllers/login_contr.dart';
import '../Controllers/sign_up_contr.dart';

class CustomerLoginView extends GetView<Customer_Login_Controller> {
  CustomerLoginView({Key? key}) : super(key: key);
  final controller = Get.put<Customer_Login_Controller>(
      Customer_Login_Controller());

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
              LoginImage(
                image: 'assets/images/signup.png',
                title: 'Welcome to E_Services',
              ),
              SizedBox(height:5),
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
                            Get.toNamed(AppRoutes.Customer_forget_Password_Screen);

                          }, child: Text('Forget Password ?',style: TextStyle(color:AppColors.primaryColor,fontSize: 25,fontWeight:  FontWeight.bold)),),
                        ),


                        SizedBox(
                          height: 20,
                        ),
                        Obx((){
                          return Container(
                            padding: EdgeInsets.all(5),
                            height: 70,
                            width: double.infinity,
                            child: controller.state.loginLoading.value==true ? Center(child: CircularProgressIndicator()) :
                            RoundButton(
                                title: 'Login',
                                textColor: Colors.white,
                                onPress: () {
                                  String email = controller.state.loginEmailController.text.trim().toString();
                                  String password = controller.state.loginPasswordController.text.trim().toString();
                                  if(email.isNotEmpty && password.isNotEmpty){
                                    controller.login(email, password);
                                  }else{
                                    Snackbar.showSnackBar("Error", "Enter all fields");
                                  }

                                }),
                          );
                        }),
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
                                Get.offAllNamed(AppRoutes.Customer_Sign_UpScreen);
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
