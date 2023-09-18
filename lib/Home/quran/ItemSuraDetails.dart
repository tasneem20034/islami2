import 'package:flutter/material.dart';
import 'package:islamii2/Home/quran/suradetails.dart';

class ItemSurDetails extends StatelessWidget {
  String name;
  int index;

  ItemSurDetails({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text ( '$name (${index + 1})'
    ,style: Theme.of(context).textTheme.titleSmall,
    textAlign: TextAlign.center,
    textDirection: TextDirection.rtl,);
  }
}

