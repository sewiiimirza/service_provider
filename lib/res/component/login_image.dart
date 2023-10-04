import 'package:flutter/material.dart';

import '../colors/color.dart';
class LoginImage extends StatelessWidget {
  final String image,title;
  const LoginImage({Key? key,
 required this.image,required this.title,
  }): super(key:key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Column(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [

      Image(image: AssetImage('assets/images/login.png',),
      height:size.height*0.3,
    ),
          // Center(
          //     child: Text(title, style: TextStyle(color: AppColors.secondaryColor,
          //         fontSize: 25,
          //         fontWeight: FontWeight.bold))
          // ),

    ]
    );
  }
}

class SPLoginImage extends StatelessWidget {
  final String image,title;
  const SPLoginImage({Key? key,
    required this.image,required this.title,
  }): super(key:key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Image(image: AssetImage('assets/images/sp_login.png',
              ),
                height:size.height*0.4,
              //  fit: BoxFit.cover,
              ),
          Center(
          child: Text(title, style: TextStyle(color: AppColors.secondaryColor,
                  fontSize: 35,
                  fontWeight: FontWeight.bold))
          ),

        ]
    );
  }
}
