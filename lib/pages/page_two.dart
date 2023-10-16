import 'package:flutter/material.dart';
import 'package:flutter_navigation/pages/page_three.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green[700],
        title: const Text(
          "Page 2",
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
                    Navigator.pushNamed(context, "page-3");
                  },
                  child: const Text("Page 3 (route)")),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PageThree()));
                },
                child: const Text("Page 3 (no route)")),
          ],
        ),
      ),
    );
  }
}
