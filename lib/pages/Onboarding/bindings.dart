import 'package:e_services/pages/Onboarding/controller.dart';
import 'package:get/get.dart';

class OnboardingBinding implements Bindings{
 @override
 void dependencies(){
   Get.lazyPut<OnboardingController>(() => OnboardingController());
  }
}

