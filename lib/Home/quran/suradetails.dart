import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii2/Home/quran/ItemSuraName.dart';

import '../../my_theme.dart';
import 'ItemSuraDetails.dart';

class SuraDetails extends StatefulWidget {
  static const String routes = 'suraDetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String>verses=[];

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if(verses.isEmpty){
      loadFile(args.index);
    }

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
    '${args.name}',
    style: Theme.of(context).textTheme.titleLarge,
    )))
    ,body:verses.length==0?CircularProgressIndicator()
    :
    Container(decoration: BoxDecoration(color:MyTheme.white,borderRadius: BorderRadius.circular(25.0),),
      margin: EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.width*0.05 ,horizontal:MediaQuery.of(context).size.height*0.03 ),
      child: ListView.separated( separatorBuilder: (context,index){
      return Divider(
      color: Theme
          .of(context)
          .primaryColor,
      thickness: 1,
      );},

        itemBuilder:((context,index){
        return ItemSurDetails(name:verses[index],index: index);
      }),itemCount: verses.length,
      ),
    )) ] );
  }

void loadFile(int index)async{
    String content=await rootBundle.loadString('assets/file/${index+1}.txt');
    List<String>lines=content.split('\n');
    verses=lines;
    setState(() {

    });
    print (lines);
}
}
class SuraDetailsArgs{
  String name;
  int index;
  SuraDetailsArgs({required this.name,required this.index});}