import 'package:flutter/material.dart';

void main() {
  runApp(const IconButtonApp());
}

class IconButtonApp extends StatelessWidget {
  const IconButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IconButton Example',
      home: Scaffold(
        appBar: AppBar(title: const Text('IconButton Example')),
        body: const IconButtonExample(),
      ),
    );
  }
}

class IconButtonExample extends StatefulWidget {
  const IconButtonExample({super.key});

  @override
  State<IconButtonExample> createState() => _IconButtonExampleState();
}

class _IconButtonExampleState extends State<IconButtonExample> {
  int _itemCount = 0;

  void _addItem() {
    setState(() {
      _itemCount += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Material(
            color: Colors.grey[300],
            shape: const CircleBorder(),
            child: InkWell(
              customBorder: const CircleBorder(),
              onTap: _addItem,
              child: const Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.add, size: 32),
                    SizedBox(height: 4),
                    Text(
                      'Press to add 1 item',
                      style: TextStyle(fontSize: 10),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text('Items : $_itemCount'),
        ],
      ),
    );
  }
}