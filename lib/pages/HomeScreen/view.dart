import 'package:e_services/res/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller.dart';
class HomeScreen extends GetView<HomeController> {
  HomeScreen({Key? key}) : super(key: key);
  final controller = Get.put<HomeController>(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
         appBar: AppBar(
             leading: Icon(
           Icons.menu,
           color: AppColors.primaryColor,
           size: 40,
         ),
           title: Text('E_Services',
           style: TextStyle(fontSize: 30,
             fontWeight: FontWeight.bold,
             color: AppColors.secondaryColor,
           ),
     ),
           centerTitle: true,
           backgroundColor: Colors.transparent,
          elevation: 0,
         ),
      body:SafeArea(
         child:SingleChildScrollView(
           child: Container(
             padding: EdgeInsets.all(20.0),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text('HI,\n Need some help today?',style: TextStyle(fontSize: 30,
                   fontWeight: FontWeight.bold,
                   color: AppColors.primaryTextColor,
                 ),),
                  SizedBox(height:20.0),
                 Container(decoration: BoxDecoration(border: Border(left: BorderSide(width: 4)),),
                   padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('Search',style: TextStyle(fontSize: 30,
                         fontWeight: FontWeight.bold,
                         color: Colors.grey.withOpacity(0.5),
                       ),),
                       Icon(Icons.mic,size: 25,),
                       
                     ],
                   ),
                 ),



               ],
             ),

           ),





             ),




         ),
    );
  }
}