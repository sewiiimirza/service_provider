
import 'package:e_services/pages/Welcome/states.dart';
import 'package:get/get.dart';

import '../../utils/routes/route_name.dart';



class WelcomeController extends GetxController{
  final  state = WelcomeState();//not change over time
  WelcomeController();


  void navigate(){
   Future.delayed(const Duration(seconds: 3), ()=>
        Get.offAll(AppRoutes.Customer_Sign_UpScreen));//);
  }//used for navigation and routing things

}//now controller and state are called from UI
