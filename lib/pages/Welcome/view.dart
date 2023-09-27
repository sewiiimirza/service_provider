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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/welcome.png',
            height: 150,
            width: 150,
            fit: BoxFit.cover),
        Column(
              children: [
                Text('Get Started',
                    textAlign: TextAlign.center,
                    style:Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.black)),
              ],
            ),
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
