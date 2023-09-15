import 'package:flutter/material.dart';

class MyTheme {
  static Color blackcolor = Color(0xff242424);
  static Color lightcolor = Color(0xffB7935F);
  static Color white = Colors.white;

  static ThemeData lightTheme = ThemeData(
      primaryColor: lightcolor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true),
      textTheme: TextTheme(
          titleLarge: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color: blackcolor)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: blackcolor, unselectedItemColor: white,selectedIconTheme: IconThemeData(size:45 ),unselectedIconTheme: IconThemeData(size: 40)));
}