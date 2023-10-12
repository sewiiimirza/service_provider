import 'package:e_services/pages/HomeScreen/states.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeController();
  final  state = HomeState();
  RxInt currentNavIndex = 0.obs;



}