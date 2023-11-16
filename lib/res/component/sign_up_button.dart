//
//
// import 'package:e_services/utils/routes/route_name.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../colors/color.dart';
//
// class SignUpButton extends StatelessWidget {
//   final SignUpButtonController _signUpButtonController = Get.put(SignUpButtonController());
//   final VoidCallback? onCustomerPressed;
//   final VoidCallback? onServiceProviderPressed;
//   SignUpButton({Key? key,required this.onCustomerPressed,
//     required this.onServiceProviderPressed,
//   }) : super(key: key);
// @override
//   Widget build(BuildContext context) {
//     return ListTile(
//         title: Text('Sign Up As',
//           style: TextStyle(fontSize: 22,
//               fontWeight: FontWeight.bold,
//               color: AppColors.secondaryColor),
//         ),
//         trailing: Obx(() =>
//             DropdownButton(
//               value: _signUpButtonController.selectedRole.value,
//               onChanged: (String? value) {
//                 if (value != null) {
//                   _signUpButtonController.setSelectedRole(value);
//                 }
//               },
//               icon: Icon(Icons.arrow_drop_down,
//                   size: 30,
//                   color: AppColors.secondaryColor),
//               // Set icon size and color
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700,
//                   color: AppColors.secondaryColor),
//               // Set text style
//               underline: Container(),
//               // Remove the default underline
//               items: ['Customer', 'Service Provider',].
//               map<DropdownMenuItem<String>>((String value) {
//                 return DropdownMenuItem<String>(
//
//                   value: value,
//                   child: Text(value),
//                 );
//               }).toList(),
//             )),
//         onTap: () {
//           _signUpButtonController.navigate(
//             userRole: _signUpButtonController.selectedRole.value,
//                 onCustomerPressed: onCustomerPressed,
//                 onServiceProviderPressed: onServiceProviderPressed,
//
//           );
//         }
//     );
//   }
// }
//
// class SignUpButtonController extends GetxController {
//    VoidCallback? onCustomerPressed;
//    VoidCallback? onServiceProviderPressed;
//     var selectedRole = 'Customer'.obs;
//
//     void setSelectedRole(String role) {
//     selectedRole.value = role;
//     }
//   void navigate(
//
//    {VoidCallback ? onCustomerPressed,
//    VoidCallback ? onServiceProviderPressed, required String userRole,
//    }){
//     if (selectedRole.value == 'Customer' && onCustomerPressed!= null) {
//       onCustomerPressed();
//     } else if (selectedRole.value == 'Service Provider' &&
//         onServiceProviderPressed != null) {
//       onServiceProviderPressed();
//     }
//   }
//
//   }

