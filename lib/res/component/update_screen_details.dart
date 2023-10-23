import 'package:flutter/material.dart';

import '../../res/colors/color.dart';
class UpdateProfile extends StatelessWidget {
  String _name = "John Deo";

  UpdateProfile({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile',
          style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.primaryColor,
        //  elevation: 0,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},

              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                    'assets/images/service_provider2.png'),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Change Profile Picture'),
            ),
            TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                initialValue: _name,
                onChanged: (value) {
                  //     setState(() {
                  _name = value;
                } //);
              //},
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}

