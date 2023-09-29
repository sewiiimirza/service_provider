import 'package:flutter/material.dart';

import '../colors/color.dart';

class RoundButton extends StatelessWidget {
 final String title;
  final VoidCallback onPress;
  final Color color,textColor;
  final bool loading ;

   const  RoundButton({Key? key,
    required this.title,
    required this.onPress,
  this.textColor=Colors.white,
    this.color= AppColors.primaryColor,
     this.loading=false,

   }) : super(key : key );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: loading ? null:onPress,// if loading true than return null
      child: Container(
        height: 60,
       width: 180,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),

        ),

        child:loading? const Center(child:CircularProgressIndicator(color:Colors.white),): Center(child:Text(title,style:Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 30,fontWeight:FontWeight.bold,color: textColor),
        ),

      ),
      ),
    );
  }
}
