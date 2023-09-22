import 'package:flutter/material.dart';
import 'package:islamii2/Home/quran/suradetails.dart';

import 'ItemHadeethScreen.dart';
import 'hadeeth_tap.dart';

class ItemHadeethName extends StatelessWidget {
  Hadeeth hadeth;

  ItemHadeethName({
    required this.hadeth,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(HadeethScreen.routes, arguments: hadeth);
      },
      child: Text(
        hadeth.title,
        style: Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
