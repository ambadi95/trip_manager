import 'package:flutter/material.dart';
import 'package:trip_manager/core/%20colors/core_colors.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_circle, color: primaryColor,size: 100,),
            Text('John Doe'),
            Text('+91 999 999 99 99'),

          ],
        ),
      )
    );
  }
}
