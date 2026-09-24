import 'package:flutter/material.dart';

void main() {
  runApp(const SliderApp());
}

class SliderApp extends StatelessWidget {
  const SliderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slider Example',
      home: Scaffold(
        appBar: AppBar(title: const Text('Slider Example')),
        body: const SliderExample(),
      ),
    );
  }
}

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _currentSliderPrimaryValue = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Adjust the Volume :',
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(
          height: 20,
        ),
        Slider(
          min: 0.0,
          max: 100.0,
          value: _currentSliderPrimaryValue,
          label: _currentSliderPrimaryValue.round().toString(),
          onChanged: (double value) {
            setState(() {
              _currentSliderPrimaryValue = value;
            });
          },
        ),
        Text(
          'Volume : $_currentSliderPrimaryValue',
        ),
      ],
    );
  }
}