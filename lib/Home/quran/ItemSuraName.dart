import 'package:flutter/material.dart';
import 'package:islamii2/Home/quran/suradetails.dart';

class ItemSurName extends StatelessWidget{
  String name;
  int index;
  ItemSurName({required this.name,required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){Navigator.of(context).pushNamed(SuraDetails.routes,arguments: SuraDetailsArgs(name: name, index: index));},
      child: Text(name,style: Theme.of(context).textTheme.titleSmall,
      textAlign: TextAlign.center,),
    );
  }
}

