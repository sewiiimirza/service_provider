
import 'package:e_services/res/component/sign_up_button.dart';
import 'package:e_services/utils/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../res/colors/color.dart';
import 'controller.dart';


class WelcomeView extends GetView<WelcomeController>{
  WelcomeView({Key? key}): super(key: key);
  final controller=Get.put<WelcomeController>(WelcomeController());

  @override
  Widget build(BuildContext context) {
    controller.navigate();
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
         SignUpButton(),
           Container(
             padding: EdgeInsets.all(11.0),
             // height: 60,
             // width: 180,
             decoration: BoxDecoration(
               color: AppColors.primaryColor,
               borderRadius: BorderRadius.circular(50),
             ),
           child:  TextButton(
                   onPressed: () => Get.toNamed('/customer_signup'),
             child: Center(child:Text('SignUp',
               style:Theme.of(context).textTheme.headlineMedium!
                   .copyWith(fontSize: 30,fontWeight:FontWeight.bold,
                   color:Colors.white),
             ),
                 ),


             ),
           ),
        // TextButton(
        //   onPressed: () {
        //     },
        //    child: Text('Sign Up'),
        //     ),
        //
        //    ],
        //    ),








    //      SizedBox(width: 10.0,),
           //      RoundButton(title: 'Login', onPress: (
           //        //  _controller.LoginPage();
           //          ){}),
              // OutlinedButton(
                //     onPressed:(){
                //
                //     }, child: Text('Login'.toUpperCase(),)),),
                // const SizedBox(
                //   height: 7.0,
                //   width: 7.0,),



                // RoundButton(title: 'Signup', onPress: (){}),
                 // ElevatedButton(
                 //    onPressed: (){}, child:Text('Signup'.toUpperCase())),
              ],
            ),
      ]
    ),
    ));
  }
}
