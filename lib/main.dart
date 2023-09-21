import 'package:flutter/material.dart';
import 'package:islamii2/Home/hadeeth/ItemHadeethScreen.dart';
import 'package:islamii2/Home/quran/suradetails.dart';
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
      routes: {HomeScreen.routes: (context)=>HomeScreen(),
      SuraDetails.routes:(context)=>SuraDetails(),
      HadeethScreen.routes:(context)=>HadeethScreen()},
    theme: MyTheme.lightTheme,);
  }

}