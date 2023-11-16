import 'package:e_services/pages/ScheduleScreen/view.dart';
import 'package:e_services/utils/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../res/colors/color.dart';
import 'P_update_screen.dart';
import 'P_update_screen.dart';
import 'controller.dart';

class P_Profile_View extends GetView<P_ProfileController> {
  P_Profile_View({super.key});
  final controller = Get.put<P_ProfileController>(P_ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Provider_Profile',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.primaryColor,
        //  elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                    children: [
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: const Image(
                            image: AssetImage(
                              "assets/images/service_provider2.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                          //color: Colors.white,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child:GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.P_UpdateProfileScreen);
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.blueAccent,
                            ),
                            child: Icon(
                              Icons.edit,),
                          ),
                        ),
                      ),]),
                SizedBox(height: 40,),
                // GestureDetector(
                //   onTap: () {
                //     Get.toNamed(AppRoutes.UpdateProfileScreen);
                // },

                Text(
                  ' John Doe',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),

                Text(
                  'superAdmin@E_Services.com',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),


                ListTile(
                  leading: Icon(
                    Icons.wallet,
                    color: Colors.indigoAccent,
                    size: 30,
                  ),
                  title: Text(
                    'Wallet Balance',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  trailing: Text(
                    '\$100.00',
                    style: TextStyle(
                        color: Colors.indigoAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                ListTile(
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.indigoAccent,
                    size: 30,
                  ),
                  title: Text(
                    'Favorite Services',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                    color: Colors.indigoAccent,
                  ),
                  onTap: () {},
                ),
                //
                ListTile(
                  leading: Icon(
                    Icons.star,
                    color: Colors.indigoAccent,
                    size: 30,
                  ),
                  title: Text(
                    'Rate Us',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),


                SizedBox(
                  height: 10,
                ),

                ListTile(
                  leading: Icon(
                    Icons.logout,
                    size: 30,
                    color: Colors.indigoAccent,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),


              ]
          ),

        ),
      ),
    );

  }
}