import 'package:flutter/material.dart';

void main() {
  runApp(const TextButtonApp());
}

class TextButtonApp extends StatelessWidget {
  const TextButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextButton Example',
      home: Scaffold(
        appBar: AppBar(title: const Text('TextButton Example')),
        body: const TextButtonExample(),
      ),
    );
  }
}

class TextButtonExample extends StatelessWidget {
  const TextButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Tap me',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}