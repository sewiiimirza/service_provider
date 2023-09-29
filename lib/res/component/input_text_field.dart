
import 'package:e_services/res/colors/color.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class NameInputTextForm extends StatelessWidget {
  final   TextInputType keyboardType;
  final   bool obsecure;

  final TextInputAction textInputAction;
  final TextEditingController contr;
  final decoration;

  const NameInputTextForm({Key? key,


    required this.textInputAction,

    required this.contr,

    required this.keyboardType,

    required this.obsecure,
    required this.decoration,

  }) : super(key : key );

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,

      obscureText: obsecure,
      decoration: decoration,
      controller: contr,

    );
  }
}
class InputTextForm extends StatelessWidget {
  final TextInputType keyboardType;
  final bool obsecure;
  final TextEditingController contr;

  final  decoration;
  final TextInputAction textInputAction;
  final FocusNode focNode;


  const InputTextForm({Key? key,
    required this.contr,
    required this.focNode,
  required this. textInputAction,


    required this.keyboardType,

    required this.obsecure,
    this.decoration,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
          controller: contr,
          keyboardType: keyboardType,
          focusNode: focNode,
          obscureText: obsecure,
          decoration: decoration,

          );
  }

}
class PasswordInputTextForm extends StatelessWidget {
  final   TextInputType keyboardType;
  final   bool obsecure;
  final  TextEditingController contr;

  final FocusNode focNode;
  final decoration ;


  final TextInputAction textInputAction;
  const PasswordInputTextForm({Key? key,
    required this.contr,
    required this.focNode,
    required this. textInputAction,

    required this.keyboardType,

    required this.obsecure,
    required this.decoration,

  }) : super(key : key );

  @override
  Widget build(BuildContext context) {
    return TextField(
          controller: contr,
          keyboardType: keyboardType,
          focusNode: focNode,
          obscureText: obsecure,
          decoration:decoration,

        );
  }
}


class PhoneNoInputTextForm extends StatelessWidget {
  final   TextInputType keyboardType;
  final   bool obsecure;

  final TextInputAction textInputAction;
  final TextEditingController contr;
  final decoration;

  const PhoneNoInputTextForm({Key? key,

    required this.keyboardType,

    required this.obsecure,
   required this.textInputAction,

   required this.contr,
    required this.decoration,

  }) : super(key : key );

  @override
  Widget build(BuildContext context) {
    return TextField(
          keyboardType: keyboardType,
          obscureText: obsecure,
          textInputAction: textInputAction,
          decoration:decoration,

      controller: contr,

        );
  }
}

