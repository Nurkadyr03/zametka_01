import 'package:flutter/material.dart';

class ZametkaPage extends StatelessWidget {
  
 ZametkaPage({Key?key,required this.appBarName}):super(key: key);
String appBarName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:Text(appBarName)),
    body:Container(child: Text("описание"),)
    );
  }
}