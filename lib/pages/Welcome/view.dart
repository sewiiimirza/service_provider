import 'package:e_services/res/component/round_button.dart';
import 'package:e_services/res/component/sign_up_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
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
                    style:Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight:FontWeight.bold,color: Colors.black)),
              ],
            ),
           // Row(
           //    children: [
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
                SizedBox(width: 10.0,),
                SignUpScreenButton(title: 'Signup'),

                // RoundButton(title: 'Signup', onPress: (){}),
                 // ElevatedButton(
                 //    onPressed: (){}, child:Text('Signup'.toUpperCase())),
              ],
            ),
      ),
    );
  }
}
