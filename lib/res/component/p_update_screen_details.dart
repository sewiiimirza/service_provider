import 'package:e_services/pages/ProfileScreen/Customer_Profile/update_screen.dart';
import 'package:e_services/res/component/round_button.dart';
import 'package:e_services/utils/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../pages/ProfileScreen/Customer_Profile/controller.dart';
import '../../res/colors/color.dart';

class P_UpdateProfile extends StatelessWidget {
  //String name = "John Deo";

  P_UpdateProfile({
    Key? key,
  }) : super(key: key);
  final controller =
  Get.put<UpdateProfileController>(UpdateProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Update Profile',
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
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Stack(children: [
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
                      // child:GestureDetector(
                      //   onTap: () {
                      //     ImageSelectionService();
                      //   },
                      child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.blueAccent,
                          ),
                          child: Icon(
                            Icons.camera_alt,
                          )),
                    ),

                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        size: 30,
                        color: AppColors.primaryColor,
                      ),
                      labelText: 'Name',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            style: BorderStyle.solid, color: Colors.grey.shade600),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 30), // Increase this value
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.phone_outlined,
                        size: 30,
                        color: AppColors.primaryColor,
                      ),
                      labelText: 'Phone No',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            style: BorderStyle.solid, color: Colors.grey.shade600),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 30), // Increase this value
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RoundButton(
                    title: "Save",
                    onPress: () => {},
                  ),
                ]),
              )),
        ));
// TextFormField(
//         decoration: InputDecoration(labelText: 'Name'),
//         initialValue:  UpdateProfileController.to.name,
//         onChanged: (value) {
//           UpdateProfileController.to.name=value;
//         },
    // );
    //
    //        ElevatedButton(
    //          onPressed: () {},
    //          child: Text('Change Profile Picture'),
    //        );
    //  ElevatedButton(
    //    onPressed: () {},
    //    child: Text('Save'),
    //  ),
  }
}
