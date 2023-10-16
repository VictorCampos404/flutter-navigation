import 'package:flutter/material.dart';
import 'package:flutter_navigation/pages/page_one.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green[800],
        title: const Text(
          "Home page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "page-1");
                  },
                  child: const Text("Page 1 (route)")),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PageOne()));
                },
                child: const Text("Page 1 (no route)")),
          ],
        ),
      ),
    );
  }
}
