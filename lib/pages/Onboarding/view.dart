import 'package:e_services/pages/Onboarding/index.dart';
import 'package:e_services/res/colors/color.dart';
import 'package:e_services/res/component/onboarding_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';


class OnboardingView extends GetView <OnboardingController> {
  OnboardingView({Key? key}): super(key: key);
  final _controller = Get.put<OnboardingController>(OnboardingController());

  @override
  Widget build(BuildContext context) {
  // _controller.Navigate();
    final height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(
        child: Stack(
          children:[
                 PageView.builder(
                         controller: _controller.pageController,
                       onPageChanged: _controller.currentPage,
                       itemCount: _controller.pages.length,

                        itemBuilder:(context,index){
                      return Container(
                        padding: EdgeInsets.all(5.0),
                         // height: 50,
                         // width: 50,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                  _controller.pages[index].image,
                              ),
                              SizedBox(height: 32,),
                              Text(
                                 _controller.pages[index].title,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight:FontWeight.w600,color: AppColors.primaryColor)
                          ),
                              SizedBox(height: 32,),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 64.0),
                            child:Text(
                                  _controller.pages[index].description,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize:24,fontWeight:FontWeight.w500,color: AppColors.primaryTextColor,),),
                            ),
                              ]
                          ),
                      );

        }),

        Positioned(
                    bottom: 50,
                     left:20,


                   child:Row(
                            children:List.generate(
                                _controller.pages.length,
                                    (index) => Obx((){
                                      return  Container(
                                        margin: const EdgeInsets.all(4),
                                        height: 13,
                                        width: 13,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:_controller.currentPage.value == index
                                          ?Colors.grey
                                             : AppColors.primaryColor
                                        ),

                            );

                                    }),
                          ),
    ),
               ),


            Positioned(
               right: 15,
                bottom: 30,
              child: Container(
              height: 60,
                width: 120,
                decoration: BoxDecoration(color: AppColors.primaryColor,//Colors.blueAccent,
                borderRadius: BorderRadius.circular(25)),
                child:TextButton(
                  onPressed:()=>
                      _controller.forwardAction(),
                  child: Text(_controller.isLastPage?'Start':'Next',
                    style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),
                ),


              ),
            ),



            Positioned(
              right: 20,
              top:30 ,
             child: Container(
                height: 60,
                      width: 80,
               decoration: BoxDecoration(color: AppColors.primaryColor,//Colors.blueAccent,
                   borderRadius: BorderRadius.circular(25)),
               child:TextButton(
                //splashColor: AppColors.secondaryColor,
               onPressed:()=>
               _controller.skipAction(),
                child: Text('Skip',
                  style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),

                ),
             ),
            ),



                   ]
                    ),
    ));






        }


  }



