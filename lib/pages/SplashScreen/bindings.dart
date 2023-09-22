

import 'package:e_services/pages/SplashScreen/controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class SplashBinding implements Bindings{
  @override
  void dependencies(){
    Get.lazyPut<SplashController>(()=> SplashController());//inject Controller



}


}