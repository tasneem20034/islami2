import 'package:flutter/material.dart';
import 'package:islamii2/my_theme.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/radio_brown.png',
            ),
            SizedBox(height: 40.0),
            Text(
              'اذاعه القران الكريم',
              style: TextStyle(
                  color: MyTheme.blackcolor,
                  fontWeight: FontWeight.w600,
                  fontSize: 25),
            ),
            SizedBox(height: 40.0),
            Image.asset('assets/images/Group 5.png')
          ],
        ));
  }
}
