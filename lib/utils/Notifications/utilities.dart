
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';



class Utils{
  static void fieldFocusChange(BuildContext context,FocusNode current,FocusNode nextFocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
  static toastMessage(String message){
    Fluttertoast.showToast(
      msg: message,
      backgroundColor:Colors. black,
      gravity: ToastGravity.BOTTOM,
    );
  }
  static toastMessageCenter(String message){
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.black,
      gravity: ToastGravity.CENTER,
    );
  }
  static snackBar(String title,String message){
    Get.snackbar(
      title,
      message,
    );
  }


}