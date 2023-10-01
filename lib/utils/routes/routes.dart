


import 'package:e_services/pages/SignUp_LoginPage/bindings.dart';
import 'package:e_services/pages/SignUp_LoginPage/pages/Customer_loginview.dart';

import 'package:e_services/pages/Welcome/view.dart';
import 'package:e_services/utils/routes/route_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';


import '../../pages/Onboarding/bindings.dart';
import '../../pages/Onboarding/view.dart';

import '../../pages/SignUp_LoginPage/pages/Service_provider_SignUp.dart';
import '../../pages/SignUp_LoginPage/pages/customer_signupview.dart';
import '../../pages/SignUp_LoginPage/login_page.dart';
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
          binding:CustomerSignupLoginBinding(),
         ),
    // GetPage(
    //   name: AppRoutes.Service_P_UpScreen,
    //   page: () =>ServiceProviderSignUp(),
    //   binding:ProviderSignupLoginBinding(),
    // ),
    GetPage(
      name: AppRoutes.Login_Screen,
      page: () =>CustomerLoginView(),
      binding:CustomerSignupLoginBinding(),
    ),
        // GetPage(name: RouteName.Screen,
        //   page: () => HomeScreen(),
        //   transitionDuration: Duration(milliseconds: 250),
        //   transition: Transition.leftToRightWithFade,
        // ),

      ];
}



