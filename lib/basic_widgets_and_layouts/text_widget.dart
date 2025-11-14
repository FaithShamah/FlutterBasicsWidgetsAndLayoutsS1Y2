import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text Widget')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Simple text'),
            SizedBox(height: 8),
            Text('Bold text', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Colored text', style: TextStyle(color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}
