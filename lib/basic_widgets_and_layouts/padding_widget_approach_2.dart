import 'package:flutter/material.dart';

class PaddingApproach2Widget extends StatelessWidget {
  const PaddingApproach2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Margin Text')),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(12),
          color: Colors.teal.shade50,
          child: const Text('Container with margin and padding'),
        ),
      ),
    );
  }
}
