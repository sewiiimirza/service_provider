import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';
class ProfileView extends GetView<ProfileController> {
  ProfileView({super.key});
  final controller = Get.put<ProfileController>(ProfileController());

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}



