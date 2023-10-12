import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';
class ChatView extends GetView<ChatController> {
   ChatView({super.key});
  final controller = Get.put<ChatController>(ChatController());

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}



