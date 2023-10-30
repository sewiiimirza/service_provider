// import 'package:flutter/material.dart';
// import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
// import 'package:get/get.dart';
//
// class DateTimePickerScreen extends StatelessWidget {
//   DateTime selectedDate = DateTime.now();
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Select Date and Time'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Selected Date and Time:',
//               style: TextStyle(fontSize: 18),
//             ),
//             Text(
//               selectedDate.toString(),
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 DatePicker.showDateTimePicker(
//                   context,
//                   showTitleActions: true,
//                   onConfirm: (date) {
//                     if (date != null) {
//                       selectedDate = date;
//                     }
//                   },
//                 );
//               },
//               child: Text('Pick Date and Time'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // Implement logic to confirm the selected date and time.
//                 Get.toNamed('/confirmation_screen');
//               },
//               child: Text('Confirm Date and Time'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }