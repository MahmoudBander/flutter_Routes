// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, equal_keys_in_map

import 'package:flutter/material.dart';
import 'package:navigate/Pages/Login.dart';
import 'package:navigate/Pages/Singup.dart';
import 'package:navigate/Pages/Welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Welcome(),
        "/login": (context) => const LoginFrom(),
        "/logup": (context) => const Singup(),
      },
    );
  }
}
