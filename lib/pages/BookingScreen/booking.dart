
import 'package:e_services/res/colors/color.dart';
import 'package:e_services/res/component/booking_details.dart';
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
          style: TextStyle(fontSize: 25,
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
    serviceName: 'Plumber ',
    imageUrl: 'assets/images/featured plumber.png',
    price: 32.0,
    feedbackStars: 4,
    serviceProviderName: 'John Doe',
    serviceProviderImage: 'assets/images/service_provider1.png',
    description: '',
    discount: 10.0,
      day: 'Monday',
      time: '3:00 PM',
    ),
    SizedBox(height: 20),
    BookingDetail(
    serviceName: 'Cleaning',
    imageUrl: 'assets/images/featured cleaning.png',
    price: 20.0,
    feedbackStars: 5,
    serviceProviderName: 'Felix Harris',
    serviceProviderImage: 'assets/images/service_provider2.png',
    description: 'This is a description for Service 2.',
    discount: 10.0,
      day: 'Tuesday,17 Oct,2023',
      time: '5:00 PM',
    ),
      SizedBox(height: 20),
      BookingDetail(
        serviceName: 'AC  Repair ',
        imageUrl: 'assets/images/featured repair.png',
        price: 25.0,
        feedbackStars: 5,
        serviceProviderName: 'Felix Harris',
        serviceProviderImage: 'assets/images/service_provider2.png',
        description: 'This is a description for Service 2.',
        discount: 10.0,
        day: '16 Oct,2023',
        time: '8:00 PM',
      ),
    // Add more BookingDetailWidget instances for other services
    ],
    ),
    ));
    }
    }




