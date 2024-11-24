

import 'package:flutter/material.dart';
import 'package:zametka_01/homePage.dart';
import 'package:zametka_01/screens/create.dart';
import 'package:zametka_01/screens/login_page.dart';
import 'package:zametka_01/screens/sign_in_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => const  LoginPage(),
        "/main_screen": (context) => const HomePage(),
        "/sign_page": (context) => const SignInPage(),
        "/create":(context)=>const CreatePage(),
      },
      initialRoute: "/",
    );
  }
}
