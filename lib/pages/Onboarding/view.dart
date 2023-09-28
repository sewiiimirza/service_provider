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
                              style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight:FontWeight.w700,color: AppColors.primaryTextColor)
                      ),
                          SizedBox(height: 32,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 64.0),
                        child:Text(
                              _controller.pages[index].description,
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
                          _controller.pages.length,
                              (index) => Obx((){
                                return  Container(
                                  margin: const EdgeInsets.all(4),
                                  height: 12,
                                  width: 12,
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
              right: 30,
                bottom: 30,

                child:FloatingActionButton(
                  elevation: 0,
                  //splashColor: AppColors.secondaryColor,
                  onPressed: ()=>_controller.forwardAction(),
                    child:Obx((){
                      return Text
                    (_controller.isLastPage?' start':'Next');

                    }),
                ),
            ),
            // Positioned(
            //   right: 30,
            //   bottom: 30,
            //
            //   child:FloatingActionButton(
            //     elevation: 0,
            //     //splashColor: AppColors.secondaryColor,
            //    onPressed: (
            //        _controller.pages
            //
            //     ){},
            //     child: Text('skip',),
            //
            //     ),
            //   ),

                  ]
                      ),
                ),
           );




        }


  }



