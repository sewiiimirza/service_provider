
import 'package:e_services/pages/OnboardingScreens/view.dart';
import 'package:e_services/utils/routes/route_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../pages/Login/view.dart';
import '../../pages/OnboardingScreens/bindings.dart';
import '../../pages/SignUp_Login/view.dart';
import '../../pages/SplashScreen/bindings.dart';
import '../../pages/SplashScreen/view.dart';




class AppPages {
   static final  RouteObserver<Route> observer=RouteObserver();
    static List <String>history=[];
  static final  List<GetPage>routes=[
    GetPage(
          name: AppRoutes.SplashScreen,
          page: () => SplashScreenView(),
          binding:SplashScreenBinding(),
         ),
           GetPage(
           name: AppRoutes.OnboardingScreen,
             page: () =>OnboardingView(),
          binding:OnboardingBinding(),
         ),
        //  GetPage(
        // name: AppRoutes.Login_Sign_Up,
        //   page: () =>SignupLoginView(),
        //  binding:SignupLoginBinding(),
        // ),
        // GetPage(name: RouteName.Screen,
        //   page: () => HomeScreen(),
        //   transitionDuration: Duration(milliseconds: 250),
        //   transition: Transition.leftToRightWithFade,
        // ),

      ];
}



