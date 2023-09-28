
import 'package:e_services/res/colors/color.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class NameInputTextForm extends StatelessWidget {
  final   TextInputType keyboardType;
  final   bool obsecure;
  final   Color color,textColor;
  final  String  descrip ;

  const NameInputTextForm({Key? key,

    required this.descrip,

    this.textColor=const Color(0xff92EFFD),
    this.color= const Color(0xff4E65FF),
    required this.keyboardType,

    required this.obsecure,

  }) : super(key : key );

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8 , vertical: 5),
        child:TextField(
          keyboardType: keyboardType,

          obscureText: obsecure,
          decoration: InputDecoration(
            hintText: descrip,
            prefixIcon: Icon(Icons.person_outlined, color: Colors.blue,),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.purple, style: BorderStyle.solid,),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),

        ));
  }
}
class InputTextForm extends StatelessWidget {
  final TextInputType keyboardType;
  final bool obsecure;
  final TextEditingController contr;
  final FocusNode focNode;
  final Color color, textColor;
  final String descrip;

  const InputTextForm({Key? key,
    required this.contr,
    required this.descrip,
    required this.focNode,

    this.textColor = const Color(0xff92EFFD),
    this.color = const Color(0xff4E65FF),
    required this.keyboardType,

    required this.obsecure,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        child: TextField(
          controller: contr,
          keyboardType: keyboardType,
          focusNode: focNode,
          obscureText: obsecure,
          decoration: InputDecoration(
            hintText: descrip,
            prefixIcon: Icon(Icons.email_outlined, color: Colors.blue,),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.purple, style: BorderStyle.solid,),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),

        ));
  }

}
class PasswordInputTextForm extends StatelessWidget {
  final   TextInputType keyboardType;
  final   bool obsecure;
  final  TextEditingController contr;
  final FocusNode focNode;

  final   Color color,textColor;
  final  String  descrip ;

  const PasswordInputTextForm({Key? key,
    required this.contr,
    required this.descrip,
    required this.focNode,


    this.textColor=const Color(0xff92EFFD),
    this.color= const Color(0xff4E65FF),
    required this.keyboardType,

    required this.obsecure,

  }) : super(key : key );

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8 , vertical: 5),
        child:TextField(
          controller: contr,
          keyboardType: keyboardType,
          focusNode: focNode,
          obscureText: obsecure,
          decoration: InputDecoration(
            hintText: descrip,
            prefixIcon: Icon(Icons.password_outlined, color: Colors.blue,),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.purple, style: BorderStyle.solid,),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),

        ));
  }
}


class PhoneNoInputTextForm extends StatelessWidget {
  final   TextInputType keyboardType;
  final   bool obsecure;

  final   Color color,textColor;
  final  String  descrip ;

  const PhoneNoInputTextForm({Key? key,
    required this.descrip,


    this.textColor=AppColors.primaryTextColor,
    this.color=AppColors.secondaryColor,
    required this.keyboardType,

    required this.obsecure,

  }) : super(key : key );

  @override
  Widget build(BuildContext context) {
    return TextField(
          keyboardType: keyboardType,
          obscureText: obsecure,
          decoration: InputDecoration(
            hintText: descrip,
            prefixIcon: Icon(Icons.numbers, color: AppColors.iconBackgroundColor,),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.purple, style: BorderStyle.solid,),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),

        );
  }
}
