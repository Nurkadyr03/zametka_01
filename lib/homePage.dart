import 'package:flutter/material.dart';
import 'package:zametka_01/screens/drawer_page.dart';
import 'package:zametka_01/screens/search_page.dart';
import 'package:zametka_01/screens/zametka_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        actions: [
          IconButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder:(context) => SearchPage(),));}, icon: const Icon(Icons.search)),
        ],
        title: const Text("Заметки"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, "/create");
        },
      ),
      drawer:const DrawerPage(),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          
          return Card(
            child: TextButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 const Text("Тема"),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.delete,size:20))
                ],
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ZametkaPage(
                        appBarName: 'Тема',
                      ),
                    ));
              },
            ),
          );
        },
      ),
    );
  }
}
