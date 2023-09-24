

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../colors/color.dart';

class OnboardingScreen1 extends StatelessWidget {
  final String image;
  final String title;
  const OnboardingScreen1({Key? key,
    required this.image,
    required this.title,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return
      Container(
        color: AppColors.onboardingPageColor1,
       // color: Colors.white,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                 image: AssetImage('assets/images/onboarding1.png',),
                    height: size.height* 0.4,
                  ),

              Column(
                    children: [
                      Text('Quick and Easy\n'
                            'Booking',
                             textAlign: TextAlign.center,
                            style:Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.black)),
                    ],
                  ),
                   SizedBox(height: 40.0,),
        ],
      ),
    );




  }
}