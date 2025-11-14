import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  final List<String> assets = const [
    'images/Logo.png',
    'images/Logo2.png',
    'images/girls.png',
    'images/woman.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Local Images')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: assets.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                assets[index],
                fit: BoxFit.cover,
                errorBuilder: (context, error, stack) => Container(
                  color: Colors.grey[200],
                  child: const Center(child: Icon(Icons.broken_image)),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
