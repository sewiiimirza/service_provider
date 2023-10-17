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
        //  elevation: 0,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                f

      ),

    body:Row(
    children:[
      CategoryItem(
    imageName: 'smart_devicee',
    categoryName: 'SmartHome',
    ),
    SizedBox(width: 10,),
    CategoryItem(
    imageName: 'electrician',
    categoryName: 'Electrician',

    ),
      SizedBox(width: 10,),
      CategoryItem(
        imageName: 'plumber',
        categoryName: 'Plumber',

      ),
      SizedBox(width: 10,),
      CategoryItem(
        imageName: 'cleaning',
        categoryName: 'Cleaning',

      ),
      SizedBox(width: 10,),
      CategoryItem(
        imageName: 'repair',
        categoryName: 'AC Repair',

      ),

      SizedBox(width: 10,),
      CategoryItem(
        imageName: 'cooking',
        categoryName: 'Cook',

      ),
      SizedBox(width: 10,),
      CategoryItem(
        imageName: 'cooking',
        categoryName: 'Electrician',
      ),
      SizedBox(width: 10,),
      CategoryItem(
        imageName: 'carpenter',
        categoryName: 'Carpenter',

      ),
      SizedBox(width: 10,),
      CategoryItem(
        imageName: 'salon',
        categoryName: 'Salon',
      ),
      SizedBox(width: 10,),
      CategoryItem(
        imageName: 'painter',
        categoryName: 'Painter',
      ),
      SizedBox(width: 10,),
      CategoryItem(
        imageName: 'laundry',
        categoryName: 'Laundry',

      ),
      SizedBox(width: 10,),
      CategoryItem(
        imageName: 'electrician',
        categoryName: 'Electrician',
      ),

    ],
    ),
    );
    }
    }


