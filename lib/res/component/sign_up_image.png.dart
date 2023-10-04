import 'package:e_services/res/colors/color.dart';
import 'package:flutter/material.dart';
class SignupImage extends StatelessWidget {
  final String image,title;
  const SignupImage({Key? key,
    required this.image,
    required this.title,
  }): super(key:key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
                 Image(image: AssetImage('assets/images/signup.png',
                 ),
                   height:size.height*0.2,
                  ),
             Center(
             child:Text(title,style:TextStyle(color:AppColors.secondaryColor,fontSize: 25,fontWeight: FontWeight.bold))
             ),
    ],
          );
  }
}
class SPSignupImage extends StatelessWidget {
  final String image, title;

  const SPSignupImage({Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image: AssetImage('assets/images/sp_signup.png',
        ),
         height: size.height * 0.2,
          //fit: BoxFit.fill,
        ),
        Center(
            child: Text(title, style: TextStyle(color: AppColors.secondaryColor,
                fontSize: 25,
                fontWeight: FontWeight.bold))
        ),
      ],
    );
  }
}
class ForgetPasswordImage extends StatelessWidget {
  final String image;

  const ForgetPasswordImage({Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image: AssetImage('assets/images/forget_password.png',
        ),
          height: size.height * 0.2,
          //fit: BoxFit.fill,
        ),
        // Center(
        //     child: Text( style: TextStyle(color: AppColors.secondaryColor,
        //         fontSize: 25,
        //         fontWeight: FontWeight.bold))
        // ),
      ],
    );
  }
}