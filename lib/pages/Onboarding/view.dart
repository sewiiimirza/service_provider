import 'package:e_services/pages/Onboarding/index.dart';
import 'package:e_services/res/colors/color.dart';
import 'package:e_services/res/component/onboarding_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';


class OnboardingView extends GetView <OnboardingController> {
 // final _controller = OnboardingController();
  final obcontroller=OnboardingState();
  OnboardingView({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(
        child: Stack(
          children:[
                 PageView.builder(
                     controller: controller.pageController,
                   onPageChanged: obcontroller.currentPage,
                   itemCount: controller.pages.length,

                    itemBuilder:(context,index){
                  return Container(
                    height: 50,
                    width: 50,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                              controller.pages[index].image,
                          ),
                          SizedBox(height: 30,),
                          Text(
                             controller.pages[index].title,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight:FontWeight.w700,color: AppColors.primaryTextColor)
                      ),
                          SizedBox(height: 32,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 64.0),
                        child:Text(
                              controller.pages[index].description,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize:23,fontWeight:FontWeight.w400,color: AppColors.primaryTextColor,),),
                        ),
                          ]
                      ),
                  );

        }),
               Positioned(
                 bottom: 30,
                   left: 20,
                   child:Row(
                      children:List.generate(
                          controller.pages.length,
                              (index) => Obx(()=>
                                 Container(
                                  margin: const EdgeInsets.all(4),
                                  height: 12,
                                  width: 12,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:obcontroller.currentPage.value == index
                                    ?Colors.cyanAccent
                                       : AppColors.primaryColor
                                  ),

                      ),
                              )),
                    ),
    ),
            Positioned(
              right: 30,
                bottom: 30,

                child:FloatingActionButton(
                  elevation: 0,
                  splashColor: AppColors.secondaryColor,
                  onPressed: controller.forwardAction(),
                    child:Text('Next'),


                )),
                  ]
                      ),
                ),
           );




        }


  }



