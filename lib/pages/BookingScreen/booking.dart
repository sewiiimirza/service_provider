
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
    serviceName: 'Smart Device Maintenance',
    imageUrl: 'assets/images/featured smart_device.png',
    price: 32.0,
    feedbackStars: 4,
    serviceProviderName: 'Pedro Noris',
    serviceProviderImage: 'assets/images/service_provider2.png',
    description: 'skilled professional',
    discount: 10.0,
      day: 'Wednesday',
      time: '5:00 PM',
    ),
    SizedBox(height: 20),
      BookingDetail(
        serviceName: 'Plumber ',
        imageUrl: 'assets/images/featured plumber.png',
        price: 32.0,
        feedbackStars: 4,
        serviceProviderName: 'John Deo',
        serviceProviderImage: 'assets/images/service_provider1.png',
        description: 'skilled professional',
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
    serviceProviderName: 'John Deo',
    serviceProviderImage: 'assets/images/service_provider1.png',
    description: 'skilled professional',
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
        serviceProviderName: 'Pedro Noris',
        serviceProviderImage: 'assets/images/service_provider2.png',
        description: 'skilled professional',
        discount: 10.0,
        day: '16 Oct,2023',
        time: '8:00 PM',
      ),
      SizedBox(height: 20),
      BookingDetail(
        serviceName: 'House Hold Cook',
        imageUrl: 'assets/images/featured cooking.png',
        price: 25.0,
        feedbackStars: 5,
        serviceProviderName: 'Felix Harris',
        serviceProviderImage: 'assets/images/service_provider2.png',
        description: ' skilled professional',
        discount: 10.0,
        day: '17 Oct,2023',
        time: '8:00 PM',
      ),
      SizedBox(height: 20),
      BookingDetail(
        serviceName: 'Electrician',
        imageUrl: 'assets/images/featured electrician.png',
        price: 30.0,
        feedbackStars: 5,
        serviceProviderName: 'Pedro Noris',
        serviceProviderImage: 'assets/images/service_provider3.png',
        description: ' skilled trade person .',
        discount: 10.0,
        day: '17 Oct,2023',
        time: '8:00 PM',
      ),
      SizedBox(height: 20),
      BookingDetail(
        serviceName: 'Carpenter',
        imageUrl: 'assets/images/featured carpenter.png',
        price: 25.0,
        feedbackStars: 5,
        serviceProviderName: 'John Deo',
        serviceProviderImage: 'assets/images/service_provider1.png',
        description: 'skilled professional',
        discount: 10.0,
        day: '18 Oct,2023',
        time: '8:00 PM',
      ),
      SizedBox(height: 20),
      BookingDetail(
        serviceName: 'Salon Services',
        imageUrl: 'assets/images/featured salon.png',
        price: 60.0,
        feedbackStars: 5,
        serviceProviderName: 'Pedro Noris',
        serviceProviderImage: 'assets/images/service_provider3.png',
        description: 'skilled professional',
        discount: 10.0,
        day: '17 Oct,2023',
        time: '8:00 PM',
      ),
      SizedBox(height: 20),
      BookingDetail(
        serviceName: 'AC  Repair ',
        imageUrl: 'assets/images/featured repair.png',
        price: 25.0,
        feedbackStars: 5,
        serviceProviderName: 'Felix Harris',
        serviceProviderImage: 'assets/images/service_provider2.png',
        description: 'skilled professional',
        discount: 10.0,
        day: '16 Oct,2023',
        time: '8:00 PM',
      ),
      SizedBox(height: 20),
      BookingDetail(
        serviceName: 'Laundry',
        imageUrl: 'assets/images/featured laundry.png',
        price: 20.0,
        feedbackStars: 5,
        serviceProviderName: 'Felix Harris',
        serviceProviderImage: 'assets/images/service_provider2.png',
        description: 'skilled professional',
        discount: 10.0,
        day: '18 Oct,2023',
        time: '2:00 PM',
      ),
      SizedBox(height: 20),
      BookingDetail(
        serviceName: 'Painter',
        imageUrl: 'assets/images/featured painter.png',
        price: 35.0,
        feedbackStars: 5,
        serviceProviderName: 'Felix Harris',
        serviceProviderImage: 'assets/images/service_provider2.png',
        description: 'skilled professional',
        discount: 10.0,
        day: '18 Oct,2023',
        time: '2:00 PM',
      ),
    ],
    ),
    ));
    }
    }




