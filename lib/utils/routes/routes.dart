

import 'package:e_services/pages/SignUp_Login/ServiceProvider_signup/Service_provider_SignUp.dart';
import 'package:e_services/pages/Welcome/view.dart';
import 'package:e_services/utils/routes/route_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';


import '../../pages/Onboarding/bindings.dart';
import '../../pages/Onboarding/view.dart';

import '../../pages/SignUp_Login/SignupPages/Customer_sign_up/bindings.dart';
import '../../pages/SignUp_Login/SignupPages/customer_view.dart';
import '../../pages/SplashScreen/bindings.dart';
import '../../pages/SplashScreen/view.dart';
import '../../pages/Welcome/bindings.dart';




class AppPages {
   static final  RouteObserver<Route> observer=RouteObserver();
    static List <String>history=[];
  static final  List<GetPage>routes=[
    GetPage(
          name: AppRoutes.SplashScreen,
          page: () => SplashScreenView(),
          binding:SplashScreenBinding(),
           //observers: [observer],
         ),
           GetPage(
           name: AppRoutes.OnboardingScreen,
             page: () =>OnboardingView(),
          binding:OnboardingBinding(),
         ),
    GetPage(
      name: AppRoutes.WelcomeScreen,
      page: () =>WelcomeView(),
      binding:WelcomeBinding(),
    ),
          GetPage(
         name: AppRoutes.Customer_Sign_UpScreen,
           page: () =>CustomerSignupView(),
          binding:CustomerSignupBinding(),
         ),
    GetPage(
      name: AppRoutes.Customer_Sign_UpScreen,
      page: () =>ServiceProviderSignUp(),
      binding:CustomerSignupBinding(),
    ),
        // GetPage(name: RouteName.Screen,
        //   page: () => HomeScreen(),
        //   transitionDuration: Duration(milliseconds: 250),
        //   transition: Transition.leftToRightWithFade,
        // ),

      ];
}



