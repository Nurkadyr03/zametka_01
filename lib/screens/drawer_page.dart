import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      Drawer(
        backgroundColor: Colors.black38,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          DrawerHeader(child: Icon(Icons.person,size: 100,),),
          SizedBox(height: 20,),
          
         Text("Nurkadyr",style:TextStyle(fontSize: 20,color:Colors.white)),
         SizedBox(height: 20,),
          Text("+996777123456",style:TextStyle(fontSize: 15,color:Colors.blueAccent)),
         

        ],),
      );
    
  }
}