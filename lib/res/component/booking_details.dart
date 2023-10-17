import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/routes/route_name.dart';
import '../colors/color.dart';

class BookingDetail extends StatelessWidget {
  final String serviceName;
  final String imageUrl;
  final double price;
  final int feedbackStars;
  final String serviceProviderName;
  final String serviceProviderImage;
  final String description;
  final double discount;
  final String day;
  final String time;


  BookingDetail({
    required this.serviceName,
    required this.imageUrl,
    required this.price,
    required this.feedbackStars,
    required this.serviceProviderName,
    required this.serviceProviderImage,
    required this.description,
    required this.discount,
    required this.day,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            serviceName,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Image.asset(
            imageUrl,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Row(
              children: [
                Row(
                  children: List.generate(
                    feedbackStars,
                        (index) =>
                        Icon(
                          Icons.star,
                          color: AppColors.secondaryColor,
                        ),
                  ),
                ),
                Spacer(),
                Text(
                  '\$$price',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ]
          ),

          // Text(
          //   '$feedbackStars Stars',
          //   style: TextStyle(
          //     fontSize: 18,
          //   ),
          // ),


          SizedBox(height: 10),
          Row(
            children: [
              Text('Service Provider: $serviceProviderName',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              CircleAvatar(
                backgroundImage: AssetImage(serviceProviderImage),
                radius: 30,
              ),
            ],
          ),
          SizedBox(height: 10),
          Text('Description: $description', style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),),
          SizedBox(height: 10),
          Text(
            'Discount: ${discount.toStringAsFixed(2)}% Off', style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),),

          SizedBox(height: 10),
          Text('Day: $day', style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),),
          SizedBox(height: 10),
          Text('Time: $time', style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Get.toNamed(AppRoutes.ConfirmationScreen);
            },
            child: Text('Book Now'),
          ),
        ],
      ),
    );
  }
}
