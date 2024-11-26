import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("поиск темы"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          decoration: const InputDecoration(
              hintText: 'Тема',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)))),
        ),
      ),
    );
  }
}
