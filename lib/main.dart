import 'package:flutter/material.dart';
import 'package:flutter_navigation/pages/home_page.dart';
import 'package:flutter_navigation/pages/page_one.dart';
import 'package:flutter_navigation/pages/page_three.dart';
import 'package:flutter_navigation/pages/page_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      routes: {
        'home': (context) => const HomePage(),
        'page-1': (context) => const PageOne(),
        'page-2': (context) => const PageTwo(),
        'page-3': (context) => const PageThree(),
      },
      home: const HomePage(),
    );
  }
}
