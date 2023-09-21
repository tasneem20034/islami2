import 'dart:math';

import 'package:flutter/material.dart';

import '../../my_theme.dart';

class TasbeehTap extends StatefulWidget {
  const TasbeehTap({super.key});

  @override
  State<TasbeehTap> createState() => _TasbeehTapState();
}

class _TasbeehTapState extends State<TasbeehTap> {
  int counter = 0;

  void counteradd() {
    setState(() {
      counter = counter + 1;
      if (counter == 99) {
        counter = 0;
      }
    });
  }

  List<String> Azkar = ['سبحان الله', 'الحمدلله', 'الله اكبر'];
  String zekr = '';

  void viewList() {
    setState(() {
      if (counter < 33) {
        zekr = Azkar[0];
      } else if (counter > 33 && counter < 66) {
        zekr = Azkar[1];
      } else if (counter > 66) {
        zekr = Azkar[2];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final degrees = 90;
    final angel = degrees * pi / 180;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        //Stack(alignment:Alignment.bottomCenter,children: [Container(color:Colors.orangeAccent,child: Image.asset('assets/images/head of seb7a.png',alignment: Alignment.bottomLeft))],),
        //Container(color:Colors.red,child: Image.asset('assets/images/body of seb7a.png',alignment: Alignment.topCenter,))
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/head of seb7a.png',
                alignment: Alignment.center),
          ],
        ),
        Expanded(
          child: InkWell(
              onTap: () {
                counteradd();
                viewList();
                setState(() {});              },
              child: Transform.rotate(
                angle: angel,
                child: Image.asset(
                  'assets/images/body of seb7a.png',
                  fit: BoxFit.contain,
                  height: 20,
                  width: 20,
                  alignment: Alignment.center,
                ),
              )),
        ),
        SizedBox(
          height: 40.0,
        ),
        Text(
          textAlign: TextAlign.center,
          'عدد التسبيحات',
          style: TextStyle(
              color: MyTheme.blackcolor,
              fontWeight: FontWeight.w600,
              fontSize: 25),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 60,
              child: Text(
                '$counter',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
              decoration: BoxDecoration(
                  color: Colors.brown[200],
                  borderRadius: BorderRadius.circular(25.0)),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 100,
              child: Text('$zekr',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, color: MyTheme.white)),
              decoration: BoxDecoration(
                  color: MyTheme.lightcolor,
                  borderRadius: BorderRadius.circular(25.0)),
            )
          ],
        )
      ],
    );
  }
}
