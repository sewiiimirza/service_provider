


import 'package:e_services/pages/BookingScreen/booking.dart';
import 'package:e_services/pages/BookingScreen/successful.dart';
import 'package:e_services/pages/CategoryScreen/category.dart';
import 'package:e_services/pages/FeaturedScreen/featured.dart';
import 'package:e_services/pages/HomeScreen/index.dart';
import 'package:e_services/pages/ProfileScreen/Customer_Profile/update_screen.dart';
import 'package:e_services/pages/ProfileScreen/Customer_Profile/view.dart';
import 'package:e_services/pages/SignUp_LoginPage/pages/Customer/bindings.dart';
import 'package:e_services/pages/SignUp_LoginPage/pages/Customer/Pages/cus_forget.dart';
import 'package:e_services/pages/SignUp_LoginPage/pages/Customer/Pages/customer_loginview.dart';
import 'package:e_services/pages/SignUp_LoginPage/pages/ServiceProvider/Pages/service_provider_forget_password.dart';
import 'package:e_services/pages/SignUp_LoginPage/pages/ServiceProvider/Pages/service_provider_login.dart';

import 'package:e_services/pages/Welcome/view.dart';
import 'package:e_services/res/component/date_time_picker.dart';
import 'package:e_services/res/component/location.dart';
import 'package:e_services/res/component/navigation_bar.dart';
import 'package:e_services/utils/routes/route_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';


import '../../pages/HomeScreen/drawer_screen.dart';
import '../../pages/Onboarding/bindings.dart';
import '../../pages/Onboarding/view.dart';

import '../../pages/ProfileScreen/Provider_Profile/P_update_screen.dart';
import '../../pages/ProfileScreen/Provider_Profile/view.dart';
import '../../pages/ScheduleScreen/view.dart';
import '../../pages/SignUp_LoginPage/pages/ServiceProvider/bindings.dart';
import '../../pages/SignUp_LoginPage/pages/ServiceProvider/Pages/service_provider_signUp.dart';
import '../../pages/SignUp_LoginPage/pages/Customer/Pages/customer_signupview.dart';
import '../../pages/SignUp_LoginPage/pages/Customer/Session_widgets/login_page.dart';
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
      name: AppRoutes.Login_Screen,
      page: () =>CustomerLoginView(),
      binding:CustomerLoginBinding(),
    ),
    GetPage(
      name: AppRoutes.Customer_forget_Password_Screen,
      page: () =>CustomerForgetPassword(),
      binding:ForgetBindings(),
    ),
    GetPage(
      name: AppRoutes.Service_P_UpScreen,
      page: () =>ServiceProviderSignUp(),
      binding:ProviderSignupBinding(),
    ),



    GetPage(
      name: AppRoutes.SP_Login_Screen,
      page: () =>Service_ProviderLoginView(),
      binding:ProviderLoginBinding(),
    ),
    GetPage(
      name: AppRoutes.SP_Forget_Password_Screen,
      page: () =>SP_Forget_Password(),
      binding:Forget_SP_Bindings(),
    ),


    GetPage(name: AppRoutes.NavigationMenu,
      page: () => NavigationMenu(),
    ),
    GetPage(name: AppRoutes.HomeScreen,
      page: () => HomeScreen(),
      binding:HomeBinding(),
    ),
    GetPage(name: AppRoutes.FeaturedView,
      page: () => FeaturedView(),
      // binding:HomeBinding(),
    ),
    GetPage(name: AppRoutes.CategoryView,
      page: () => CategoryView(),
     // binding:HomeBinding(),
    ),
    GetPage(name: AppRoutes.BookingView,
      page: () => BookingView(),
      //  binding:HomeBinding(),
    ),
    GetPage(name: AppRoutes.ScheduleView,
      page: () => ScheduleView(),
    //  binding:HomeBinding(),
    ),
    // GetPage(name: AppRoutes.DateTimePickerScreen,
    //   page: () => DateTimePickerScreen(),
    //   //  binding:HomeBinding(),
    // ),
    GetPage(name: AppRoutes.LocationPickerScreen,
      page: () => LocationPickerScreen(),
      //  binding:HomeBinding(),
    ),
    GetPage(name: AppRoutes.SuccessfulView,
      page: () => SuccessfulView(),
      //  binding:HomeBinding(),
    ),
    GetPage(name: AppRoutes.ProfileView,
      page: () => ProfileView(),
     // binding:HomeBinding(),
    ),
    GetPage(name: AppRoutes.P_ProfileView,
      page: () => P_Profile_View(),
      // binding:HomeBinding(),
    ),
    GetPage(name: AppRoutes.P_UpdateProfileScreen,
      page: () => P_UpdateProfileScreen(),
      // binding:HomeBinding(),
    ),
    GetPage(name: AppRoutes.UpdateProfileScreen,
      page: () => UpdateProfileScreen(),
      // binding:HomeBinding(),
    ),
    GetPage(name: AppRoutes.DrawerScreen,
      page: () => DrawerScreen(),
      //  binding:HomeBinding(),
    ),


      ];
}



