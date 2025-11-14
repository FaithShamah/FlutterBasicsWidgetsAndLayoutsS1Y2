import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Column Widget')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              color: Colors.blue.shade100,
              child: const Text('First'),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(12),
              color: Colors.green.shade100,
              child: const Text('Second'),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(12),
              color: Colors.orange.shade100,
              child: const Text('Third'),
            ),
          ],
        ),
      ),
    );
  }
}
