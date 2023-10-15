import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/colors/color.dart';
import '../../res/component/category_detail.dart';
import 'controller.dart';
class CategoryView extends GetView<CategoryController> {
  CategoryView({super.key});
  final controller = Get.put<CategoryController>(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories',
          style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.bold,
            color:Colors.white ,
          ),
        ),
        backgroundColor:AppColors.primaryColor,
        //  elevation: 0,

      ),
    body: ListView(
    scrollDirection: Axis.horizontal,
    children: [
    CategoryItem(
    imageName: 'plumber',
    categoryName: 'Plumber',
    onTap: () {
    // Handle category tap
    },
    ),
    CategoryItem(
    imageName: 'electrician',
    categoryName: 'Electrician',
    onTap: () {
    // Handle category tap
    },
    ),
    // Add more CategoryItem widgets for other categories
    ],
    ),
    );
    }
    }


