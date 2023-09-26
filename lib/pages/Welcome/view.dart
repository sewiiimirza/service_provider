import 'package:flutter/material.dart';
class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Image(image:AssetImage('assets/images/welcome.png')),
            Text('Get Started'),
            Row(
              children: [
                OutlinedButton(
                    onPressed:(){

                    }, child: Text('Login')),
                ElevatedButton(
                    onPressed: (){}, child:Text('Signup')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
