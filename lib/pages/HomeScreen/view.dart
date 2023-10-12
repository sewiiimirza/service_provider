

import 'package:e_services/pages/HomeScreen/index.dart';
import 'package:e_services/res/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
             child: Column(
               children: [
                 Container(
                   padding: EdgeInsets.all(10.0),
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
                                 //search box
                                 Text('Search',style: TextStyle(fontSize: 30,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.grey.withOpacity(0.5),
                                 ),),

                                 Icon(Icons.mic,size: 25,),
                           ]
                             ),
                           ),
                                     SizedBox(height: 5,),
                                     Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Categories',style: TextStyle(fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      //  color: AppColors.secondaryColor,
                                        color: Colors.black,
                                      ),),
                                      OutlinedButton(onPressed:(){},
                                        child: Text('ViewAll',style: TextStyle(fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.secondaryColor,
                                        ),),),
                                    ],
                                  ),
                                 //categories
                                     Row(
                                     children: [
                                       Container(
                                                 width: 90,
                                                 height: 120,
                                                 decoration: BoxDecoration(
                                                   color: AppColors.iconBackgroundColor,
                                                   borderRadius: BorderRadius.circular(10),
                                                 ),
                                                 child:Column(
                                                   mainAxisAlignment: MainAxisAlignment.center,
                                                   children:[
                                                   Image.asset("assets/icons/plumber.png",height: 80,
                                                   ),
                                                   SizedBox(height: 5),
                                                   Text(
                                                     'Plumber',
                                                     textAlign: TextAlign.center,
                                                     style: TextStyle(
                                                       fontSize: 15,
                                                       fontWeight: FontWeight.w700,
                                                     ),
                                                   ),
                                                 ]
                                                 ),
                                                 ),
                                       SizedBox(width: 10), // Adjust as needed
                                       Container(
                                         width: 90,
                                         height: 120,
                                         decoration: BoxDecoration(
                                           color: AppColors.iconBackgroundColor,
                                           borderRadius: BorderRadius.circular(10),
                                         ),
                                         child: Column(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: [
                                             Image.asset(
                                               "assets/icons/electrician.png",
                                               height: 80,
                                             ),
                                             SizedBox(height: 5),
                                             Text(
                                               'Electrician',
                                               textAlign: TextAlign.center,
                                               style: TextStyle(
                                                 fontSize: 15,
                                                 fontWeight: FontWeight.w700,
                                               ),
                                             ),
                                           ],
                                         ),
                                       ),
                                       SizedBox(width: 10),
                                       Container(
                                         width: 90,
                                         height: 120,
                                         decoration: BoxDecoration(
                                           color: AppColors.iconBackgroundColor,
                                           borderRadius: BorderRadius.circular(10),
                                         ),
                                         child: Column(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: [
                                             Image.asset(
                                               "assets/icons/repair.png",
                                               height: 80,
                                             ),
                                             SizedBox(height: 5),
                                             Text(
                                               'Repair',
                                               textAlign: TextAlign.center,
                                               style: TextStyle(
                                                 fontSize: 15,
                                                 fontWeight: FontWeight.w700,
                                               ),
                                             ),
                                           ],
                                         ),
                                       ),
                                       SizedBox(width: 10),
                                       Container(
                                         width: 90,
                                         height: 120,
                                         decoration: BoxDecoration(
                                           color: AppColors.iconBackgroundColor,
                                           borderRadius: BorderRadius.circular(10),
                                         ),
                                         child: Column(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: [
                                             Image.asset(
                                               "assets/icons/cleaning.png",
                                               height: 80,
                                             ),
                                             SizedBox(height: 5),
                                             Text(
                                               'Cleaning',
                                               textAlign: TextAlign.center,
                                               style: TextStyle(
                                                 fontSize: 15,
                                                 fontWeight: FontWeight.w700,
                                               ),
                                             ),
                                           ],
                                         ),
                                       ),

                                     ]
                                     ),
                       SizedBox(height: 5,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text('Featured',style: TextStyle(fontSize: 25,
                             fontWeight: FontWeight.bold,
                             //  color: AppColors.secondaryColor,
                             color: Colors.black,
                           ),),
                           OutlinedButton(onPressed:(){},
                             child: Text('ViewAll',style: TextStyle(fontSize: 25,
                               fontWeight: FontWeight.bold,
                               color: AppColors.secondaryColor,
                             ),),),
                         ],
                       ),
                 SizedBox(
                   width: 320,
                   height: 200,
                       child: Container(
                           decoration: BoxDecoration(
                             color: AppColors.iconBackgroundColor,
                             borderRadius: BorderRadius.circular(10),
                           ),
                           padding: EdgeInsets.all(10),
                           child:Column(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children:[
                                 Flexible(
                                   child: Row(
                                    children:[
                                       Text(
                                         'Find a best\n home services',
                                         textAlign: TextAlign.center,
                                         style: TextStyle(
                                           fontSize: 25,
                                           fontWeight: FontWeight.w700,
                                         ),
                                         maxLines: 2,
                                         overflow: TextOverflow.ellipsis,
                                       ),
                                    Flexible(child: Image(image:AssetImage("assets/images/featured1.png"),)),
                                   ],
                                 ),
                 ),
          ]
                           ),
                                 ),

                         ),



          ]
        ),
                 ),
        ]
    ),
    )),
    );













  }
}