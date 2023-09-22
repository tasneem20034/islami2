import 'package:flutter/material.dart';
import 'package:islamii2/Home/quran/suradetails.dart';

class ItemHadeethDetails extends StatelessWidget {
  String content;


  ItemHadeethDetails({required this.content});

  @override
  Widget build(BuildContext context) {
    return Text ( content
      ,style: Theme.of(context).textTheme.titleSmall,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,);
  }
}
