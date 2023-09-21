import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
 final String title;
  final VoidCallback onPress;
  final Color color,textColor;
  final bool loading ;
   const  RoundButton({Key? key,
    required this.title,
    required this.onPress,
  this.textColor=const Color(0xff92EFFD),
    this.color= const Color(0xff4E65FF),
     this.loading=false,

   }) : super(key : key );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: loading ? null:onPress,// if loading true than return null
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),

        ),

        child:loading? const Center(child:CircularProgressIndicator(color:Colors.white),): Center(child:Text(title,style:Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 50,fontWeight:FontWeight.bold,color: textColor),
        ),

      ),
      ),
    );
  }
}
