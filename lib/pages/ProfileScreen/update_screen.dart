
import 'package:e_services/utils/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'controller.dart';

class UpdateProfileScreen extends GetView<UpdateProfileController> {
  UpdateProfileScreen({super.key});
  final controller = Get.put<UpdateProfileController>(UpdateProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
            // GestureDetector(
            //   onTap: () {
            //    AppRoutes.UpdateProfileScreen;
            //   },

                      // backgroundImage: controller.profilePicturePath.isEmpty
                      //     ? AssetImage('assets/images/service_provider1.png')
                      //     : FileImage(File(controller.profilePicturePath.value)),
             //   ),
            //
            // ElevatedButton(
            //   onPressed: () {
            //     AppRoutes.UpdateProfileScreen;
            //    // controller.updateProfilePictureFromCamera();
            //   },
            //   child: Text('Change Profile Picture'),
            // ),
            // TextFormField(
            //   decoration: InputDecoration(labelText: 'Name'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //
            //   },
            //   child: Text('Save'),
            // ),
      //     ],
      //   ),
    //   ] ),
   //  ),
   );

  }
}
//import 'package:image_picker/image_picker.dart';

// class ImageSelectionService {
//   final _picker = ImagePicker();
//
//   Future<PickedFile?> selectImageFromGallery() async {
//     final pickedFile = await _picker.getImage(source: ImageSource.gallery);
//     return pickedFile;
//   }
//
//   Future<PickedFile?> captureImageFromCamera() async {
//     final pickedFile = await _picker.getImage(source: ImageSource.camera);
//     return pickedFile;
//   }
// }