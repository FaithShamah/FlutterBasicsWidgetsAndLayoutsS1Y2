import 'package:flutter/material.dart';

class PaddingApproach2Widget extends StatelessWidget {
  const PaddingApproach2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Margin Text')),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(100),
          color: Colors.teal.shade50,
          child: const Text('Container with padding'),
        ),
      ),
    );
  }
}
