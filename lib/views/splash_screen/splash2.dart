import 'package:e_commerce/utils/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric( vertical: 10, horizontal: 10),
        margin: EdgeInsets.symmetric( vertical: 100, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Auto height magic!
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title'),
            SizedBox(height: 8),
            Text('Description line 1'),
            Text('Description line 2'),
            // Joto content add korba, height automatically barbe
          ],
        ),
      ),

      // body:  Center(child: Text(' THIS IS SPLASH SCREEN 2',style:TextStyle(color: AppColors.bgColor),)),
    );
  }
}
