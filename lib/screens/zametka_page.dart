import 'package:flutter/material.dart';
import 'package:zametka_01/screens/chang_page.dart';

class ZametkaPage extends StatelessWidget {
  
 ZametkaPage({Key?key,required this.appBarName}):super(key: key);
String appBarName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:Text(appBarName),actions: [TextButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangPage (appBarName: appBarName,)));
    }, child:const Text("изменить",style: TextStyle(fontSize: 20),))],),
    body:Container(child: Text("описание"),)
    );
  }
}