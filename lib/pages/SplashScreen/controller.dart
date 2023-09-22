import 'package:e_services/pages/SplashScreen/states.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{
  SplashController();
  final state= SplashState;//not change over time

  @override
void onReady(){
    super.onReady();
    print('WelcomeController');
  }//used for navigation and routing things

}//now controller and state are called from UI
