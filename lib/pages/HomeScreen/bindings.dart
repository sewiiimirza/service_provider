import 'package:e_services/pages/Onboarding/controller.dart';
import 'package:get/get.dart';

import 'controller.dart';

class HomeBinding implements Bindings{
  @override
  void dependencies(){
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
