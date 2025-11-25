import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class MarginWidget extends StatelessWidget {
  const MarginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.all(80), child: Text('This is a text with margin'));
  }
}
