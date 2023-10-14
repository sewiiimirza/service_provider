
import 'package:e_services/res/colors/color.dart';
import 'package:e_services/res/component/booking_details.dart';
import 'package:flutter/material.dart';

import '../../pages/BookingScreen/booking.dart';

class ServiceContainer extends StatelessWidget {
  final String serviceName;
  final String serviceLable;
  final String imageUrl;
  final double price;
  final int feedbackStars;
  final String serviceProviderName;
  final String serviceProviderImage;

  ServiceContainer( {
    required this.serviceName,
    required this.serviceLable,
    required this.imageUrl,
    required this.price,
    required this.feedbackStars,
    required this.serviceProviderName,
    required this.serviceProviderImage,
  });

  @override
  Widget build(BuildContext context) {
    GestureDetector(
        onTap: () {
         Get.push(
            context,
            MaterialPageRoute(
              builder: (context) => BookingView(),
            ),
          );
        },
   child: Container(
      width: 320,
      height: 300,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  serviceName,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 10),
                Image.asset(
                "assets/images/featured cleaning.png",
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, color: AppColors.secondaryColor),
                        SizedBox(width: 5),
                        Text('$feedbackStars Stars'),
                      ],
                    ),
                    Text(
                      '\$$price',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(serviceProviderImage),
                      radius: 20,
                    ),
                    SizedBox(width: 10),
                    Text(serviceProviderName),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}