
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../pages/HomeScreen/controller.dart';
import '../colors/color.dart';

class NavigationBar extends StatelessWidget {
  final List<Widget> destinations;
   NavigationBar({Key? key,required this.destinations}) : super(key: key);
   final controller = Get.put<HomeController>(HomeController());
  @override
  Widget build(BuildContext context) {
  var navbarItem=[
  BottomNavigationBarItem(icon: Image.asset('assets/icons/home.png',height: 30,width:26),label: "Home"),
  BottomNavigationBarItem(icon: Image.asset('assets/icons/bookings.png',height: 30,width:26),label: "Bookings"),
  BottomNavigationBarItem(icon: Image.asset('assets/icons/categories.png',height: 30,width:26),
  label: "Categories"),
  BottomNavigationBarItem(icon: Image.asset('assets/icons/chat.png',height:30,width:26),label: "Chat"),
  BottomNavigationBarItem(icon: Image.asset('assets/icons/profile.png',height: 30,width:26),label: "Profile"),
  ];

  return Scaffold(
  backgroundColor: Colors.white,

  body: SafeArea(
  child:SingleChildScrollView(
  child: Container(
  padding: EdgeInsets.all(20.0),
  child: Column(
  children: [
    destinations.elementAt(controller.currentNavIndex.value),
    ],
   ),

  ),

  ),
  ),

  bottomNavigationBar: BottomNavigationBar(
currentIndex:controller.currentNavIndex.value,
selectedItemColor: AppColors.primaryColor,
selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
type: BottomNavigationBarType.fixed,
backgroundColor: Colors.white,
items:navbarItem,
onTap: (value){
controller.currentNavIndex.value=value;
},
),
);


}
}