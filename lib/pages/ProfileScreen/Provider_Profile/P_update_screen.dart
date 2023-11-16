import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../res/colors/color.dart';
import '../../../res/component/p_update_screen_details.dart';
import '../../../res/component/update_screen_details.dart';
import 'controller.dart';

class P_UpdateProfileScreen extends GetView<P_UpdateProfileController> {
  P_UpdateProfileScreen({super.key});
  final controller = Get.put<P_UpdateProfileController>(P_UpdateProfileController());
  @override
  Widget build(BuildContext context) {
    return P_UpdateProfile();






  }
}