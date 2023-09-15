import 'package:flutter/material.dart';
import 'package:islamii2/Home/hadeeth/hadeeth_tap.dart';
import 'package:islamii2/Home/quran/quran_tap.dart';
import 'package:islamii2/Home/radio/radio_tap.dart';
import 'package:islamii2/Home/tasbeeh/tasbeeh_tap.dart';
import 'package:islamii2/my_theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routes = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIcon=0;

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Image.asset(
          'assets/images/bg3.png',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
              title: (Text(
            'Islami',
            style: Theme.of(context).textTheme.titleLarge,
          ))),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(currentIndex: currentIcon,onTap:(index){
              currentIcon=index;
              setState(() {

              });

            },items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/quran.png')),
                  label: "Quran"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/haddeth.png')),
                  label: 'Hadeeth'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                  label: 'Sebha'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/radio.png')),
                  label: 'Radio'),
            ]),
          ),
          body: tabs[currentIcon],
        )
      ],
    );

  }
  List<Widget>tabs=[QuranTap(),HadeethTap(),TasbeehTap(),RadioTap()];
}
