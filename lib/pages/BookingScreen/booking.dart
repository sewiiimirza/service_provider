
import 'package:e_services/res/colors/color.dart';
import 'package:e_services/res/component/booking_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';


class BookingView extends GetView<BookingController> {
  BookingView({Key? key,}) : super(key: key);
  final controller = Get.put<BookingController>(BookingController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookings Screen',
          style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold,
            color:Colors.white ,
          ),
        ),
        backgroundColor:AppColors.primaryColor,
      //  elevation: 0,

      ),
      body: SafeArea(
     child: ListView(
    padding: EdgeInsets.all(16),
    children: [
    BookingDetail(
    serviceName: 'Service ',
    imageUrl: 'assets/service1.jpg',
    price: 50.0,
    feedbackStars: 4,
    serviceProviderName: 'John Doe',
    serviceProviderImage: 'assets/provider1.jpg',
    description: 'This is a description for Service 1.',
    discount: 10.0,
    ),
    SizedBox(height: 20),
    BookingDetail(
    serviceName: 'Service 2',
    imageUrl: 'assets/service2.jpg',
    price: 80.0,
    feedbackStars: 5,
    serviceProviderName: 'Jane Doe',
    serviceProviderImage: 'assets/provider2.jpg',
    description: 'This is a description for Service 2.',
    discount: 15.0,
    ),
    // Add more BookingDetailWidget instances for other services
    ],
    ),
    ));
    }
    }




