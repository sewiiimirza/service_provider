
import 'dart:ffi';

import 'package:e_services/res/component/sign_up_button.dart';
import 'package:e_services/utils/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../res/colors/color.dart';
import 'controller.dart';


class WelcomeView extends GetView<WelcomeController>{
  WelcomeView({Key? key}) : super(key: key);
  final controller = Get.put<WelcomeController>(WelcomeController());



  @override
  Widget build(BuildContext context) {
 //   var height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,

      body: Container(
        padding: EdgeInsets.all(5.0),
        child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage('assets/images/welcome.png'),
               // height:height*0.6,
            ),
        Column(
              children: [
                Text('Find a best home Services \n we are ready for you',
                    textAlign: TextAlign.center,
                    style:Theme.of(context).textTheme.headlineMedium!
                        .copyWith(fontWeight:FontWeight.bold,
                        color: Colors.black)),
   ]
    ),

            Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
             // SignUpButton(
             //     onCustomerPressed: () =>Get.toNamed(AppRoutes.Service_P_UpScreen),
             //     onServiceProviderPressed: () => Get.toNamed(AppRoutes.Customer_Sign_UpScreen),
             // ),

               Container(
                 padding: EdgeInsets.all(11.0),
                 decoration: BoxDecoration(
                   color: AppColors.primaryColor,
                   borderRadius: BorderRadius.circular(50),
                 ),
               child:TextButton(
                 onPressed: () => Get.toNamed(AppRoutes.Customer_Sign_UpScreen),
             child: Center(child:Text('Customer',
               style:Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 30,fontWeight:FontWeight.bold,
                   color:Colors.white),
             ),
                 ),


             ),
           ),

           SizedBox(height: 10.0,),
           Container(
             padding: EdgeInsets.all(11.0),
             // height: 60,
             // width: 180,
             decoration: BoxDecoration(
               color: AppColors.primaryColor,
               borderRadius: BorderRadius.circular(50),
             ),
             child:TextButton(
                 onPressed: () {
                   Get.offAllNamed(AppRoutes.Service_P_UpScreen);
                 },
                 child: Center(
                   child: Text('Service Provider ', style:Theme.of(context).textTheme.headlineMedium!
                       .copyWith(fontSize: 30,fontWeight:FontWeight.bold,
                       color:Colors.white),),
                 )),

           ),
              ],
            ),
]
    ),
    ));
  }
}
