import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/routes/route_name.dart';
Widget buildDrawer(BuildContext context) {
  return Drawer(
      child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
  child:Column(
  mainAxisAlignment: MainAxisAlignment.center, children: [
  SizedBox(
  width: 100,
  height: 100,
    child:UserAccountsDrawerHeader(
          accountName: Text('John Doe'),
          accountEmail: Text('johndoe@example.com'),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage('assets/images/service_provider1.png'),
          ),
        ),

  ),


       ListTile(
          leading: Icon(Icons.home,color: Colors.indigoAccent,),
          title: Text('Home'),
          onTap: () {
         Get.toNamed(AppRoutes.HomeScreen);
          },
        ),
        ListTile(
          leading: Icon(Icons.calendar_today,color: Colors.indigoAccent,),
          title: Text('My Bookings'),
          onTap: () {
           Get.toNamed(AppRoutes.BookingView);
          },
        ),
        ListTile(
          leading: Icon(Icons.settings,color: Colors.indigoAccent,),
          title: Text('Settings'),
          onTap: () {
           Get.toNamed(AppRoutes.ProfileView);
          },
        ),
  ]
  ),
    ));
}