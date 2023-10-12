import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';
class CategoryView extends GetView<CategoryController> {
  CategoryView({super.key});
  final controller = Get.put<CategoryController>(CategoryController());

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


