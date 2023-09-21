
import 'package:e_services/utils/routes/route_name.dart';
import 'package:get/get.dart';

import '../../pages/Login/view.dart';
import '../../pages/SplashScreen/view.dart';




class AppRoutes {
  static appRoutes() =>
      [
        GetPage(name: RouteName.SplashScreen,
          page: () => SplashScreen(),
          transitionDuration: Duration(milliseconds:300),
          transition: Transition.leftToRightWithFade,

        ),
        GetPage(name: RouteName.LoginScreen,
          page: () => LoginScreen(),
        // transitionDuration: Duration(milliseconds: 3),
         // transition: Transition.leftToRightWithFade,
        ),
        // GetPage(name: RouteName.Screen,
        //   page: () => HomeScreen(),
        //   transitionDuration: Duration(milliseconds: 250),
        //   transition: Transition.leftToRightWithFade,
        // ),

      ];
}


