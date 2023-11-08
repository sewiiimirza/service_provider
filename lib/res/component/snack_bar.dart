import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:grocery_app/components/colors/light_app_colors.dart';

class Snackbar {
  static void showSnackBar (String title, String msg){
    String message = extractErrorMessage(msg);
    Get.snackbar(
      title,
      message,
      backgroundColor: Colors.blueAccent, // dark grey background
      colorText: Colors.white,
      titleText: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white, // for a splash of color
        ),
      ),
      messageText: Text(
        message,
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
      ),
      icon: Icon(
        Icons.info_outline,
        color: Colors.white,
      ),
      snackPosition: SnackPosition.BOTTOM,
      borderRadius: 8,
      margin: EdgeInsets.all(10),
      forwardAnimationCurve: Curves.easeOutExpo,
      reverseAnimationCurve: Curves.easeInOut,
    );


  }


  static String extractErrorMessage(String error) {
    if (error.contains(']')) {
      return error.split(']').last.trim();
    }
    return error; // return the original error if no "]" is found
  }
}