import 'package:flutter/material.dart';

void main() {
  runApp(const SwitchApp());
}

class SwitchApp extends StatelessWidget {
  const SwitchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Switch Example',
      home: Scaffold(
        appBar: AppBar(title: const Text('Switch Example')),
        body: const SwitchExample(),
      ),
    );
  }
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool _isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Switch(
          // Nilai bool ini akan mengaktifkan switch
          value: _isSwitchOn,
          activeColor: Colors.blue,
          onChanged: (bool value) {
            // Di bawah ini akan terpanggil ketika user mengaktifkan switch
            setState(() {
              _isSwitchOn = value;
            });
          },
        ),
        const SizedBox(height: 20),
        Text('Status Switch: ${_isSwitchOn ? 'Aktif' : 'Nonaktif'}'),
      ],
    );
  }
}