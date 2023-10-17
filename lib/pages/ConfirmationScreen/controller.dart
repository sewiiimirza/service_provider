

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ConfirmationController extends GetxController {
  Rx<DateTime> selectedDate = DateTime.now().obs;
  Rx<TimeOfDay> selectedTime = TimeOfDay.now().obs;
  Rx<LatLng> selectedLocation = LatLng(37.7749, -122.4194).obs; // Default location

  void selectDate(DateTime date) {
  selectedDate.value = date;
  }

  void selectTime(TimeOfDay time) {
  selectedTime.value = time;
  }

  void selectLocation(LatLng location) {
  selectedLocation.value = location;
  }
  }







