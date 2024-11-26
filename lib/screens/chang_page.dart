import 'package:flutter/material.dart';

class ChangPage extends StatelessWidget {
  ChangPage({Key? key, required this.appBarName}) : super(key: key);
  String appBarName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarName),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/main_screen',
                );
              },
              child: Text(
                "сохранить",
                style: TextStyle(fontSize: 20),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          maxLines: 40,
          decoration: const InputDecoration(
              hintText: 'описание ',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)))),
        ),
      ),
    );
  }
}
