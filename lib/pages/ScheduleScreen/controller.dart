

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ScheduleController extends GetxController {
  Rx<DateTime> selectedDate = DateTime.now().obs;
  Rx<TimeOfDay> selectedTime = TimeOfDay.now().obs;
  Rx<LatLng> selectedLocation = LatLng(32.082466, 72.669128).obs;

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







