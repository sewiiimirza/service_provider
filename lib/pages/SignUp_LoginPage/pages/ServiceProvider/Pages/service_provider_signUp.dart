
import 'package:e_services/pages/SignUp_LoginPage/pages/ServiceProvider/Controllers/sign_up_contr.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../res/colors/color.dart';
import '../../../../../res/component/round_button.dart';
import '../../../../../res/component/sign_up_image.png.dart';
import '../../../../../res/component/snack_bar.dart';
import '../../../../../res/models/prov_model.dart';
import '../../../../../utils/routes/route_name.dart';
import '../../Customer/Session_widgets/signup.dart';


class ServiceProviderSignUp extends GetView<Provider_Signup_Controller> {
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
                    child: Obx(() {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SignUp(),
                          controller.state.loading.value == true ? Container(
                              child: Center(child: CircularProgressIndicator())) :
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 70,
                            width: double.infinity,
                            child: RoundButton(
                                title: 'Signup',
                                textColor: Colors.white,
                                onPress: () {
                                  if (controller.state.signUpNameController.text.isNotEmpty &&
                                      controller.state.signUpEmailController.text.isNotEmpty &&
                                      controller.state.signUpPhoneController.text.isNotEmpty &&
                                      controller.state.signUpPasswordController.text.isNotEmpty
                                  ){
                                    ProviderModel provider = ProviderModel(
                                      providerName: controller.state.signUpNameController.text.trim().toString(),
                                      phone: controller.state.signUpPhoneController.text.trim().toString(),
                                      email: controller.state.signUpEmailController.text.trim().toString(),
                                    );
                                    String email = controller.state.signUpEmailController.text.trim().toString();
                                    String password = controller.state.signUpPasswordController.text.trim().toString();
                                   controller.registerProvider(email,password,provider);
                                  } else {
                                    Snackbar.showSnackBar(
                                        "Error", "Enter All Fields");
                                  }
                                }),),
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
                                  Get.toNamed(AppRoutes.SP_Login_Screen);
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
                      );

                    }
                  )),
    ),
            ]),
          ),
        ),
      ),
    );
  }
}
