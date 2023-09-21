import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'HadeethScreen.dart';

class HadeethTap extends StatefulWidget {
  @override
  State<HadeethTap> createState() => _HadeethTapState();
}

class _HadeethTapState extends State<HadeethTap> {
    List<Hadeeth>hadeethContent=[];

  @override
  Widget build(BuildContext context) {
    if(hadeethContent.isEmpty){
      LoadHadeethFile();
    }
    LoadHadeethFile();
    return  Center(
        child: Column(
          children: [
            Expanded(child: Image.asset('assets/images/hadeeth logo.png')),
            Divider(
              color: Theme
                  .of(context)
                  .primaryColor,
              thickness: 3,
            ),
            Text('Hadeeth Name', style: Theme
                .of(context)
                .textTheme
                .titleMedium,),
            Divider(
              color: Theme
                  .of(context)
                  .primaryColor,
              thickness: 3,
            ),
            hadeethContent.isEmpty?
                Center(child: CircularProgressIndicator(color: Theme.of(context).primaryColor,))
            :
            Expanded(flex: 3,
              child: ListView.separated(separatorBuilder: (context,index){
                return Divider(
                  color: Theme
                      .of(context)
                      .primaryColor,
                  thickness: 1,
                );
              },itemBuilder: (context,index){
                return ItemHadeethName( hadeth: hadeethContent[index],);
              },
                  itemCount:hadeethContent.length),
            )
          ],
        ));
  }

  void LoadHadeethFile()async{
   String ahadeethContent=await rootBundle.loadString('assets/file/ahadeth.txt');
   List<String>ahadeethList=ahadeethContent.split('#\r\n');
   for(int i=0;i<=ahadeethList.length;i++){
     List<String>hadeethLines=ahadeethList[i].split('\n');
     String title=hadeethLines[0];
     hadeethLines.removeAt(0);
     Hadeeth hadeeth= Hadeeth(title: title, content:hadeethLines);
     hadeethContent.add(hadeeth);
     setState(() {

     });

   }
  }
}
class Hadeeth{
  String title;
  List<String>content;
  Hadeeth({required this.title,required this.content});
}
