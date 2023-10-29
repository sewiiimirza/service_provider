
import 'package:e_services/pages/BookingScreen/booking.dart';
import 'package:e_services/pages/CategoryScreen/category.dart';
import 'package:e_services/pages/HomeScreen/index.dart';
import 'package:e_services/pages/ProfileScreen/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../pages/ScheduleScreen/view.dart';
import '../colors/color.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(NavigationMenuController());
    var navbarItem=[
      BottomNavigationBarItem(icon: Image.asset("assets/icons/home.png",width:50,height: 40,),label: "Home",),
      BottomNavigationBarItem(icon: Image.asset("assets/icons/bookings.png",width:50,height: 40,),label: "Bookings",),
      BottomNavigationBarItem(icon: Image.asset("assets/icons/categories.png",width:50,height: 40,),label: "Categories",),
      BottomNavigationBarItem(icon: Image.asset("assets/icons/chat.png",width:50,height: 40,),label: "Schedule",),
      BottomNavigationBarItem(icon: Image.asset("assets/icons/profile.png",width:50,height: 40,),label: "Profile",),
    ];
    var navBody=[
      HomeScreen(),
      BookingView(),
      CategoryView(),
      ScheduleView(),
      ProfileView(),


    ];

    return Scaffold(
     body:Column(
       children: [
         Obx(()=>
        Expanded(child:navBody.elementAt(controller.currentNavIndex.value),)),
       ],
     ),
      bottomNavigationBar: Obx(()=>
       Container(
         height:80,

      child:BottomNavigationBar(
          currentIndex:controller.currentNavIndex.value,
          selectedItemColor: AppColors.primaryColor,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w800),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items:navbarItem,
          onTap: (value){
            controller.currentNavIndex.value=value;
          },


        ),
      ),

    ),
    );
  }
}



class NavigationMenuController extends GetxController {
  final RxInt currentNavIndex = 0.obs;


}



