import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Icon Widget')),
      body: const Center(
        child: Icon(Icons.phone, size: 48, color: Colors.green),
      ),
    );
  }
}
