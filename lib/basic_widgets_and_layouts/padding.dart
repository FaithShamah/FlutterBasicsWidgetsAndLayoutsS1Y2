import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(16), child: Text('Padded Text'));
  }
}
