
import 'package:e_services/res/component/round_button.dart';
import 'package:e_services/utils/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../res/colors/color.dart';
import '../../../res/component/update_screen_details.dart';
import 'controller.dart';

class UpdateProfileScreen extends GetView<UpdateProfileController> {
  UpdateProfileScreen({super.key});
  final controller = Get.put<UpdateProfileController>(UpdateProfileController());
  @override
  Widget build(BuildContext context) {
    return UpdateProfile();






  }
}

// class ImageSelectionService {
//   final _picker = ImagePicker();
//
//   Future<XFile?> selectImageFromGallery() async {
//     final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
//     return pickedFile;
//   }
//
//   Future<XFile?> captureImageFromCamera() async {
//     final pickedFile = await _picker.pickImage(source:ImageSource.camera);
//     return pickedFile;
//   }
// }