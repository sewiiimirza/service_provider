import 'dart:ffi';

import 'package:flutter/material.dart';

import '../colors/color.dart';

class OnboardingScreen3 extends StatelessWidget {
  final String image;
  final String title;


  const OnboardingScreen3({Key? key,
    required this.image,
    required this.title,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final  size= MediaQuery.of(context).size;
    return
      Container(
      //  color: AppColors.onboardingPageColor3,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Image(
                image: AssetImage('assets/images/onboarding3.png',),
                 height:size.height*0.4,
          ),

              Column(
                children: [
                  Text('Fast Services\n'
                      'Services will be done quickly ',
                      textAlign: TextAlign.center,
                      style: Theme
                          .of(context)
                          .textTheme.headlineMedium!.copyWith(color: Colors.black)),
                ],
              ),
              SizedBox(height: 40.0,),
            ]
        ),
      );

  }
}