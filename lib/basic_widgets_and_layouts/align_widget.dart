import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class AlignWidget extends StatelessWidget {
  const AlignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Aligned Text Widget')),
      body: Center(
        child: Container(
          color: Colors.blue.shade50,
          width: 300,
          height: 120,
          child: const Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Text('This text is aligned to the right'),
            ),
          ),
        ),
      ),
    );
  }
}
