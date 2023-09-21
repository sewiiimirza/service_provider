
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class TextFormField extends StatelessWidget {
 final   TextInputType keyboardType;
 final   bool obsecure;
 final  TextEditingController contr;
 final FocusNode focNode;
 final String labelText;
  final   Color color,textColor;
 final  String  descrip ;
  const TextFormField({Key? key,
    required this.contr,
    required this.descrip,
    required this.focNode,
    required this.labelText,

    this.textColor=const Color(0xff92EFFD),
    this.color= const Color(0xff4E65FF),
    required this.keyboardType,

    required this.obsecure,
    required InputDecoration decoration,

  }) : super(key : key );

  @override
  Widget build(BuildContext context) {
    return TextField(
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

    );
  }
}