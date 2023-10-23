import 'package:e_services/utils/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/colors/color.dart';
import 'controller.dart';
class ProfileView extends GetView<ProfileController> {
  ProfileView({super.key});
  final controller = Get.put<ProfileController>(ProfileController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
      title: Text('Profile',
      style: TextStyle(fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    backgroundColor: AppColors.primaryColor,
    //  elevation: 0,

    ),
    body:SafeArea(
   child: SingleChildScrollView(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Container(
    margin: EdgeInsets.symmetric(vertical: 20),
    width: 120,
    height: 120,
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.grey,
    ),
    child: Image(
        image: AssetImage("assets/images/service_provider2.png",),
    //color: Colors.white,
    ),
    ),
     Text(' John Doe',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),


     // GestureDetector(
     //  onTap: () {
     //    Get.toNamed(AppRoutes.UpdateProfileScreen);
     //  },
     //
     //
     // ),

     ListTile(
    title: Text('Wallet Balance',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
    trailing: Text('\$100.00',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
    ),

    ListTile(
    title: Text('Wallet History',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
    onTap: () {

    },
    ),

    ListTile(
    title: Text('Favorite Services',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
    onTap: () {
    },
    ),
    ListTile(
    title: Text('Favorite Providers',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
    onTap: () {
    },
    ),
    ListTile(
    title: Text('Change Password',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
    onTap: () {
    },
    ),

    ListTile(
    title: Text('Rate Us',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
    onTap: () {
    },
    ),

    // My Review
    ListTile(
    title: Text('My Review',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
    onTap: () {
    },
    ),
    ListTile(
    title: Text('About App',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
    ),

    Padding(
    padding: const EdgeInsets.all(16.0),
    // child: Text(
    // 'description ',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),
    // textAlign: TextAlign.center,
    // ),
    ),

    ElevatedButton(
    onPressed: () {
    },
    child: Text('Logout',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
    ),
    ],
    ),
    ),
    ));
    }
    }





