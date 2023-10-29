import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../pages/ScheduleScreen/controller.dart';

class LocationPickerScreen extends StatelessWidget {
  final controller = Get.put<ScheduleController>(ScheduleController());
  GoogleMapController? _mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Location on Map'),
      ),
      body: GoogleMap(
        onMapCreated: (controller) {
          _mapController = controller;
        },
        initialCameraPosition: CameraPosition(
          target: LatLng(32.082466, 72.669128),
          zoom: 15.0,
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          if (_mapController != null) {
            LatLng selectedLocation = await _mapController!.getLatLng(
              ScreenCoordinate(
                x: (Get.width ~/ 2),
                y: (Get.height ~/ 2),
              ),
            );
            Get.snackbar(
              'Error',
              'Map controller not available.',
              snackPosition: SnackPosition.TOP,
            );
          }
        },
        child: Icon(Icons.check),
      ),
    );
  }
}