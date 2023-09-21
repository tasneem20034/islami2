import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii2/Home/hadeeth/ItemHadeethDetails.dart';
import 'package:islamii2/Home/hadeeth/hadeeth_tap.dart';
import 'package:islamii2/Home/quran/ItemSuraName.dart';

import '../../my_theme.dart';
import '../quran/ItemSuraDetails.dart';

class HadeethScreen extends StatefulWidget {
  static const String routes = 'hadeethDetails';

  @override
  State<HadeethScreen> createState() => _HadeethScreenState();
}

class _HadeethScreenState extends State<HadeethScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeeth;

    return Stack(children: [
      Image.asset(
        'assets/images/bg3.png',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
          appBar: AppBar(
              title: (Text(
            args.title,
            style: Theme.of(context).textTheme.titleLarge,
          ))),
          body: Container(
            decoration: BoxDecoration(
              color: MyTheme.white,
              borderRadius: BorderRadius.circular(25.0),
            ),
            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.width * 0.05,
                horizontal: MediaQuery.of(context).size.height * 0.03),
            child: ListView.builder(
              itemBuilder: ((context, index) {
                return ItemHadeethDetails(content:args.content[index] ,);
              }),
              itemCount: args.content.length,
            ),
          ))
    ]);
  }


}

