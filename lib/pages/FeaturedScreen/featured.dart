import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/colors/color.dart';
import '../../res/component/service_detail.dart';
import 'controller.dart';
class FeaturedView extends GetView<FeaturedController> {
  FeaturedView({super.key});

  final controller = Get.put<FeaturedController>(FeaturedController());

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
          title: Text('Featured',
            style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: AppColors.primaryColor,
          //  elevation: 0,

        ),
        body: SafeArea(
          child:ListView(
         children:List.generate(
          10,
            (index) => Column(
                children: [
                 //    child: ListView(
                   //   shrinkWrap: true,
                    //  scrollDirection: Axis.vertical,

                   ServiceContainer(
                          imageUrl: 'assets/images/featured smart_device.png',
                          price: 20.0,
                          feedbackStars: 4,
                          serviceName: "Smart Device Maintenance",
                          serviceProviderName: 'Pedro Noris',
                          serviceProviderImage: 'assets/images/service_provider3.png',
                          serviceLable: "Smart Home",
                        ),

                       SizedBox(height:10,),
                       ServiceContainer(
                          imageUrl: 'assets/images/featured cleaning.png',
                          price: 20.0,
                          feedbackStars: 4,
                          serviceName: "Ceiling and Wall",
                          serviceProviderName: 'John Doe',
                          serviceProviderImage: 'assets/images/service_provider1.png',
                          serviceLable: "Deep Cleaning",
                        ),
                       SizedBox(height:10,),
                      ServiceContainer(
                          imageUrl:"assets/images/featured cooking.png",
                          price: 50.0,
                          feedbackStars: 4,
                          serviceName: "House Hold Cook",
                          serviceProviderName: 'Felix Harris',
                          serviceProviderImage: 'assets/images/service_provider2.png',
                          serviceLable: "Home Cook",
                        ),
                        SizedBox(height: 10),
                       ServiceContainer(
                          imageUrl: 'assets/images/featured repair.png',
                          price: 50.0,
                          feedbackStars: 4,
                          serviceName: "AC Repair",
                          serviceProviderName: 'Pedro Noris',
                          serviceProviderImage: 'assets/images/service_provider3.png',
                          serviceLable: "AC Maintenance",
                        ),
                        SizedBox(height: 10,),
                        ServiceContainer(
                          imageUrl: 'assets/images/featured plumber.png',
                          price: 50.0,
                          feedbackStars: 4,
                          serviceName: "Plumbing Services",
                          serviceProviderName: 'John Doe',
                          serviceProviderImage: 'assets/images/service_provider1.png',
                          serviceLable: "Repairing",
                        ),
                        SizedBox(height: 10),
                       ServiceContainer(
                          imageUrl: 'assets/images/featured electrician.png',
                          price: 40.0,
                          feedbackStars: 4,
                          serviceName: "Electrician",
                          serviceProviderName: 'Pedro Noris',
                          serviceProviderImage: 'assets/images/service_provider3.png',
                          serviceLable: "Electrician",
                        ),
                        SizedBox(height: 10,),
                        ServiceContainer(
                          imageUrl: 'assets/images/featured painter.png',
                          price: 50.0,
                          feedbackStars: 4,
                          serviceName: "Renew Your House",
                          serviceProviderName: 'Felix Harris',
                          serviceProviderImage: 'assets/images/service_provider2.png',
                          serviceLable: "Painter",
                        ),
                        SizedBox(height: 10,),
                        ServiceContainer(
                          imageUrl: 'assets/images/featured carpenter.png',
                          price: 30.0,
                          feedbackStars: 4,
                          serviceName: "Furnishing Services",
                          serviceProviderName: 'John Doe',
                          serviceProviderImage: 'assets/images/service_provider1.png',
                          serviceLable: "Wooden Expert",
                        ),
                        SizedBox(height: 10,),
                        ServiceContainer(
                          imageUrl: 'assets/images/featured salon.png',
                          price: 70.0,
                          feedbackStars: 4,
                          serviceName: "Skin and Hair Care ",
                          serviceProviderName: 'Pedro Noris',
                          serviceProviderImage: 'assets/images/service_provider3.png',
                          serviceLable: "Stylish Look",
                        ),
                        SizedBox(height: 10,),
                        ServiceContainer(
                          imageUrl: 'assets/images/featured laundry.png',
                          price: 45.0,
                          feedbackStars: 4,
                          serviceName: "Laundry Services ",
                          serviceProviderName: 'John Deo',
                          serviceProviderImage: 'assets/images/service_provider1.png',
                          serviceLable: "Cloth Cleaning",
                        ),
]
                  ),

            ),),

        ),
                    );








  }
}