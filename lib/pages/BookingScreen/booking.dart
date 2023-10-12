import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';
class BookingView extends GetView<BookingController> {
  BookingView({super.key});
  final controller = Get.put<BookingController>(BookingController());

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


