

import 'package:e_services/pages/HomeScreen/index.dart';
import 'package:e_services/res/colors/color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../res/component/service_detail.dart';
import '../../utils/routes/route_name.dart';
import 'controller.dart';

class HomeScreen extends GetView<HomeController> {
  HomeScreen({Key? key}) : super(key: key);
  final controller = Get.put<HomeController>(HomeController());


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
         appBar: AppBar(
           title: Text('E_Services',
           style: TextStyle(fontSize: 30,
             fontWeight: FontWeight.bold,
             color: Colors.white
             //AppColors.secondaryColor,
           ),
     ),
           centerTitle: true,
           backgroundColor: AppColors.primaryColor,
          elevation: 0,
           leading: IconButton(
             color: Colors.white,
             icon:Icon(Icons.menu,size: 30,) ,onPressed: () {
             Get.toNamed(AppRoutes.DrawerScreen);
           },
           ),
           actions :[
             IconButton(
               color: Colors.white,
               icon:Icon(Icons.logout,size: 30,) ,onPressed: () async{
                 await FirebaseAuth.instance.signOut().then((value) {
                   Get.offAllNamed(AppRoutes.WelcomeScreen);
                 });

             },
             ),
      ]
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
                                              OutlinedButton(onPressed:(){
                                                Get.toNamed(AppRoutes.CategoryView);
                                              },
                                                child: Text('ViewAll',style: TextStyle(fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.secondaryColor,
                                                ),),),
                                            ],
                                          ),
                                         //categories
                                                 SingleChildScrollView(
                                                   scrollDirection: Axis.horizontal,
                                                   child: Row(
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
                                   OutlinedButton(onPressed:(){
                                     Get.toNamed(AppRoutes.FeaturedView);
                                   },
                                     child: Text('ViewAll',style: TextStyle(fontSize: 20,
                                       fontWeight: FontWeight.bold,
                                       color: AppColors.secondaryColor,
                                     ),),),
                                 ],
                               ),

                                  SizedBox(
                                    height: 300,
                                    child: ListView(
                                          shrinkWrap: true,
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            ServiceContainer(
                                              imageUrl: 'assets/images/featured smart_device.png',
                                              price: 20.0,
                                              feedbackStars: 4,
                                              serviceName: "Smart Device Maintenance",
                                              serviceProviderName: 'Pedro Noris',
                                              serviceProviderImage: 'assets/images/service_provider3.png',
                                              serviceLable: "Smart Home",
                                            ),
                                           ServiceContainer(
                                      imageUrl: 'assets/images/featured cleaning.png',
                                      price: 20.0,
                                      feedbackStars: 4,
                                      serviceName: "Ceiling and Wall",
                                      serviceProviderName: 'John Doe',
                                      serviceProviderImage: 'assets/images/service_provider1.png',
                                      serviceLable: "Deep Cleaning",
                                    ),
                                            ServiceContainer(
                                              imageUrl:'assets/images/featured cooking.png',
                                              price: 50.0,
                                              feedbackStars: 4,
                                              serviceName: "House Hold Cook",
                                              serviceProviderName: 'Felix Harris',
                                              serviceProviderImage: 'assets/images/service_provider2.png',
                                              serviceLable: "Home Cook",
                                            ),
                                            ServiceContainer(
                                              imageUrl: 'assets/images/featured repair.png',
                                              price: 50.0,
                                              feedbackStars: 4,
                                              serviceName: "AC Repair",
                                              serviceProviderName: 'Pedro Noris',
                                              serviceProviderImage: 'assets/images/service_provider3.png',
                                              serviceLable: "AC Maintenance",
                                            ),
                                            ServiceContainer(
                                              imageUrl: 'assets/images/featured plumber.png',
                                              price: 50.0,
                                              feedbackStars: 4,
                                              serviceName: "Plumbing Services",
                                              serviceProviderName: 'John Deo',
                                              serviceProviderImage: 'assets/images/service_provider1.png',
                                              serviceLable: "Repairing",
                                            ),


                                          ],
                                        ),
                                  ),
                                    //   shrinkWrap: true,
                                    //   scrollDirection: Axis.horizontal,
                                    //   children: [
                                    // SizedBox(
                                    //    width: 320,
                                    //    height: 220,
                                    //        child: Container(
                                    //            decoration: BoxDecoration(
                                    //           //  color: AppColors.secondaryColor.withOpacity(0.3),
                                    //              borderRadius: BorderRadius.circular(10),
                                    //            ),
                                    //            padding: EdgeInsets.all(10),
                                    //              child: Column(
                                    //                 crossAxisAlignment: CrossAxisAlignment.start,
                                    //                  children:[
                                    //                                 Text(
                                    //                                        'Deep cleaning',
                                    //                                        textAlign: TextAlign.center,
                                    //                                        style: TextStyle(
                                    //                                              fontSize: 25,
                                    //                                              fontWeight: FontWeight.bold,
                                    //                                              foreground:Paint()
                                    //                                               // ..style = PaintingStyle.stroke
                                    //                                              //..strokeWidth = 2
                                    //                                              ..color = AppColors.textFeaturedColor,
                                    //                                              background: Paint()..color=Colors.white
                                    //                                        ),
                                    //                                      //  overflow: TextOverflow.ellipsis,
                                    //                                      ),
                                    //                               SizedBox(height: 10, ),
                                    //                               Flexible(
                                    //                                 child: Image(
                                    //                                       image:AssetImage(
                                    //                                           "assets/images/featured cleaning.png",),
                                    //                                         height: 220,width:350,
                                    //                                       fit: BoxFit.cover,
                                    //                                 ),
                                    //                               ),

                                             ]
                                                           ),

                                           ),


                                        // SizedBox(
                                        //   width: 320,
                                        //   height: 220,
                                        //   child: Container(
                                        //     decoration: BoxDecoration(
                                        //       //  color: AppColors.secondaryColor.withOpacity(0.3),
                                        //       borderRadius: BorderRadius.circular(10),
                                        //     ),
                                        //     padding: EdgeInsets.all(10),
                                        //     child: Column(
                                        //         crossAxisAlignment: CrossAxisAlignment.start,
                                        //         children:[
                                        //           Text(
                                        //             '',
                                        //             textAlign: TextAlign.center,
                                        //             style: TextStyle(
                                        //                 fontSize: 25,
                                        //                 fontWeight: FontWeight.bold,
                                        //                 foreground:Paint()
                                        //                 // ..style = PaintingStyle.stroke
                                        //                 //..strokeWidth = 2
                                        //                   ..color = AppColors.textFeaturedColor,
                                        //                 background: Paint()..color=Colors.white
                                        //             ),
                                        //             //  overflow: TextOverflow.ellipsis,
                                        //           ),
                                        //           SizedBox(height: 10, ),
                                        //           Flexible(
                                        //             child: Image(
                                        //               image:AssetImage(
                                        //                 "assets/images/featured cleaning.png",),
                                        //               height: 220,width:350,
                                        //               fit: BoxFit.cover,
                                        //
                                        //             ),
                                        //           ),
                                        //         ]
                                        //     ),
                                        //
                                        //   ),
                                        //
                                        // ),
                                        // SizedBox(
                                        //   width: 320,
                                        //   height: 220,
                                        //   child: Container(
                                        //     decoration: BoxDecoration(
                                        //       //  color: AppColors.secondaryColor.withOpacity(0.3),
                                        //       borderRadius: BorderRadius.circular(10),
                                        //     ),
                                        //     padding: EdgeInsets.all(10),
                                        //     child: Column(
                                        //         crossAxisAlignment: CrossAxisAlignment.start,
                                        //         children:[
                                        //           Text(
                                        //             'Deep cleaning',
                                        //             textAlign: TextAlign.center,
                                        //             style: TextStyle(
                                        //                 fontSize: 25,
                                        //                 fontWeight: FontWeight.bold,
                                        //                 foreground:Paint()
                                        //                 // ..style = PaintingStyle.stroke
                                        //                 //..strokeWidth = 2
                                        //                   ..color = AppColors.textFeaturedColor,
                                        //                 background: Paint()..color=Colors.white
                                        //             ),
                                        //             //  overflow: TextOverflow.ellipsis,
                                        //           ),
                                        //           SizedBox(height: 10, ),
                                        //           Flexible(
                                        //             child: Image(
                                        //               image:AssetImage(
                                        //                 "assets/images/featured cleaning.png",),
                                        //               height: 220,width:350,
                                        //               fit: BoxFit.cover,
                                        //
                                        //             ),
                                        //           ),
                                        //           Row(
                                        //               children:[
                                        //                 ElevatedButton(
                                        //                   style:ElevatedButton.styleFrom(
                                        //                       shape:CircleBorder()),
                                        //                   onPressed: (){},
                                        //                   child: Icon(Icons.play_arrow),),
                                        //               ]
                                        //           ),
                                        //         ]
                                        //     ),
                                        //
                                        //   ),
                                        //
                                        // ),
                                        // SizedBox(
                                        //   width: 320,
                                        //   height: 220,
                                        //   child: Container(
                                        //     decoration: BoxDecoration(
                                        //       //  color: AppColors.secondaryColor.withOpacity(0.3),
                                        //       borderRadius: BorderRadius.circular(10),
                                        //     ),
                                        //     padding: EdgeInsets.all(10),
                                        //     child: Column(
                                        //         crossAxisAlignment: CrossAxisAlignment.start,
                                        //         children:[
                                        //           Text(
                                        //             'Deep cleaning',
                                        //             textAlign: TextAlign.center,
                                        //             style: TextStyle(
                                        //                 fontSize: 25,
                                        //                 fontWeight: FontWeight.bold,
                                        //                 foreground:Paint()
                                        //                 // ..style = PaintingStyle.stroke
                                        //                 //..strokeWidth = 2
                                        //                   ..color = AppColors.textFeaturedColor,
                                        //                 background: Paint()..color=Colors.white
                                        //             ),
                                        //             //  overflow: TextOverflow.ellipsis,
                                        //           ),
                                        //           SizedBox(height: 10, ),
                                        //           Flexible(
                                        //             child: Image(
                                        //               image:AssetImage(
                                        //                 "assets/images/featured cleaning.png",),
                                        //               height: 220,width:350,
                                        //               fit: BoxFit.cover,
                                        //
                                        //             ),
                                        //           ),
                                        //
                                        //         ]
                                        //     ),
                                        //
                                        //   ),
                                        //
                                        // ),
                   ]
                                    ),
                                  ),


                               ),









        );













  }
}