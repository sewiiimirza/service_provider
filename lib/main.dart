
import 'package:e_services/pages/Onboarding/index.dart';
import 'package:e_services/pages/SplashScreen/view.dart';
import 'package:flutter/material.dart';
import 'package:e_services/utils/routes/route_name.dart';
import 'package:e_services/utils/routes/routes.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       // primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
       home:  SplashScreenView(),
       // getPages:AppRoutes.appRoutes(),
        initialRoute: AppRoutes.SplashScreen,
        getPages:AppPages.routes,
      ) ;

  }
}




