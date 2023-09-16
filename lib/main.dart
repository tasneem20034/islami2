import 'package:flutter/material.dart';
import 'package:islamii2/my_theme.dart';
import 'Home/HomeScreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routes,
      routes: {HomeScreen.routes: (context)=>HomeScreen()},
    theme: MyTheme.lightTheme,);
  }

}