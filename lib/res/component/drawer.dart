import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/routes/route_name.dart';
class NavigationDrawer extends StatelessWidget {
  @override
    Widget build(BuildContext context){
      return Drawer(
        child: Container(
          height: 500,
           width: 70,
           color: Colors.blue,
             child: ListView(
                  children:[
                UserAccountsDrawerHeader(
                 decoration: BoxDecoration(color:Colors.blueAccent),
                 accountName: Text('John Doe'),
                 accountEmail: Text('johndoe@example.com'),
                 currentAccountPicture: CircleAvatar(
                   backgroundImage: AssetImage('assets/images/service_provider1.png'),
                 ),
              ),

          ListTile(
            leading: Icon(Icons.home, color: Colors.indigoAccent,),
            title: Text('Home'),
            onTap: () {
              Get.toNamed(AppRoutes.HomeScreen);
            },
          ),
          ListTile(
            leading: Icon(Icons.calendar_today, color: Colors.indigoAccent,),
            title: Text('My Bookings'),
            onTap: () {
              Get.toNamed(AppRoutes.BookingView);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.indigoAccent,),
            title: Text('Settings'),
            onTap: () {
              Get.toNamed(AppRoutes.ProfileView);
            },
          ),
         ]
    ),

  ));

  }
}
