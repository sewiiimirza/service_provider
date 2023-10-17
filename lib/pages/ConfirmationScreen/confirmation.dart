// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'controller.dart';
// import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
//
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
//
//
//
// class ConfirmationScreen  extends GetView<ConfirmationController> {
//   ConfirmationScreen({Key? key}) : super(key: key);
//   final controller = Get.put<ConfirmationController>(ConfirmationController());
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Confirmation Screen'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Select Date and Time:',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             Row(
//               children: [
//                 ElevatedButton(
//                   onPressed: () => _selectDate(context),
//                   child: Text('Select Date'),
//                 ),
//                 SizedBox(width: 16),
//                 ElevatedButton(
//                   onPressed: () => _selectTime(context),
//                   child: Text('Select Time'),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Select Location:',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             //ElevatedButton(
//             //onPressed: () => _selectLocation(context),
//             //child: Text('Select Location'),
//             //),
//             SizedBox(height: 20),
//             Obx(() =>
//                 Text(
//                   'Selected Date: ${controller.selectedDate.value.toLocal()}',
//                   style: TextStyle(fontSize: 16),
//                 )),
//             Obx(() =>
//                 Text(
//                   'Selected Time: ${controller.selectedTime.value.format(
//                       context)}',
//                   style: TextStyle(fontSize: 16),
//                 )),
//             Obx(() =>
//                 Text(
//                   'Selected Location: ${controller.selectedLocation.value
//                       .latitude}, ${controller.selectedLocation.value
//                       .longitude}',
//                   style: TextStyle(fontSize: 16),
//                 )),
//           ],
//         ),
//       ),
//     );
//   }
//
//   void _selectDate(BuildContext context) async {
//     DateTime? pickedDate = await DatePicker.showDatePicker(
//       context,
//       showTitleActions: true,
//       minTime: DateTime.now(),
//       maxTime: DateTime.now().add(Duration(days: 30)),
//       onConfirm: (date) {
//         if (date != null) {
//           controller.selectDate(date);
//         }
//       },
//     );
//   }
//
//   Future<void> _selectTime(BuildContext context) async {
//     final TimeOfDay? pickedTime = await showTimePicker(
//       context: context,
//       initialTime: TimeOfDay.now(),
//     );
//
//     if (pickedTime != null) {
//       // User has picked a time
//       controller.selectTime(pickedTime);
//     }
//     // void _selectTime(BuildContext context) async {
//     // final TimeOfDay? pickedTime = await DatePicker.showTimePicker(
//     // context,
//     // showTitleActions: true,
//     // onConfirm: (time) {
//     // if (time != null) {
//     // controller.selectTime(time);
//     // }
//     // },
//     // );
//     // }
//
//     // void _selectLocation(BuildContext context) {
//     //
//     // }
//   }
// }