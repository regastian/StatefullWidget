import 'package:flutter/material.dart';

void main() {
  runApp(const FloatingActionButtonApp());
}

class FloatingActionButtonApp extends StatelessWidget {
  const FloatingActionButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'FloatingActionButton Example',
      home: FloatingActionButtonExample(),
    );
  }
}

class FloatingActionButtonExample extends StatelessWidget {
  const FloatingActionButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FloatingActionButton Example')),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.arrow_right_alt),
        onPressed: () {},
        label: const Text('Next Page'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Contoh Floating Action Button',
            style: TextStyle(fontSize: 48),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}