

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../colors/color.dart';

class SignUpButton extends StatelessWidget {
  final SignUpButtonController _signUpButtonController = Get.put(SignUpButtonController());
  SignUpButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Sign Up As'),
      trailing: Obx(() => DropdownButton(
              value: _signUpButtonController.selectedRole.value,
              onChanged:(String? value) {
                if (value != null) {
                  _signUpButtonController.setSelectedRole(value);
                }
              },
               items: ['Customer', 'Service Provider'].
                  map<DropdownMenuItem<String>>((String value){
            return DropdownMenuItem<String>(
         value:value,
          child:Text(value),
      );
      }).toList(),
    )),
    onTap: (){
    _signUpButtonController.navigate();

    }
    );
  }
}

class SignUpButtonController extends GetxController {
  SignUpButtonController();
    var selectedRole = 'Customer'.obs;

    void setSelectedRole(String role) {
    selectedRole.value = role;
    }

    void navigate() {
  if (selectedRole.value == 'Customer') {
  // Navigate to Customer signup page
  Get.toNamed('/CustomerSignUp');
  } else {
  // Navigate to Service Provider signup page
  Get.toNamed('/Service_provider_SignUp');
  }
  }
    }

class SignUpScreenButton extends StatelessWidget {
  final String title;
  final Color color,textColor;
  const SignUpScreenButton({Key? key,
    required this.title,
    this.textColor=Colors.white,
    this.color= AppColors.primaryColor,


  }) : super(key : key );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 60,
        width: 180,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),

        ),

        child: Center(child:Text(title,style:Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 30,fontWeight:FontWeight.bold,color: textColor),
        ),

        ),
      ),
    );
  }
}
