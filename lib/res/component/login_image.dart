import 'package:flutter/material.dart';
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
          Center(
      child: Image(image: AssetImage('assets/images/login.png',),
      height:size.height*0.4,
    )),

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
          Center(
              child: Image(image: AssetImage('assets/images/sp_login.png',
              ),
                height:size.height*0.4,
              //  fit: BoxFit.cover,
              )
          ),

        ]
    );
  }
}
