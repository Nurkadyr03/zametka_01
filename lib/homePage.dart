import 'package:flutter/material.dart';
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
        title: const Text("Заметка"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, "/create");
        },
      ),
      
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          
          return Card(
            child: TextButton(
              child: Text("Тема"),
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
