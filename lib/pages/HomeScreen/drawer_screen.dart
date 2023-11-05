import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../res/colors/color.dart';
import 'controller.dart';

class DrawerScreen extends GetView<DrawerScreenController> {
  DrawerScreen({Key? key}) : super(key: key);
  final controller = Get.put<DrawerScreenController>(DrawerScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Drawer',
            style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: AppColors.primaryColor,
          //  elevation: 0,

        ),
        body: SafeArea(
          child: SingleChildScrollView(
          child:Drawer(),

          ),

          ),

        );
  }

}
