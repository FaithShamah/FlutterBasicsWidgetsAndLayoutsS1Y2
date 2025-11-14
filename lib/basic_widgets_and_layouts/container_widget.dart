import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Container Widget')),
      body: Center(
        child: Container(
          width: 260,
          height: 140,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.indigo.shade50,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.indigo.shade200),
          ),
          child: const Center(
            child: Text('A styled Container', style: TextStyle(fontSize: 16)),
          ),
        ),
      ),
    );
  }
}
