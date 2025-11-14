import 'package:flutter/material.dart';

class NetworkImageWidget extends StatelessWidget {
  final String imageUrl;
  const NetworkImageWidget({
    super.key,
    this.imageUrl = 'https://picsum.photos/400/300',
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      width: 250,
      height: 350,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return SizedBox(
          width: 250,
          height: 350,
          child: Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                        (loadingProgress.expectedTotalBytes ?? 1)
                  : null,
            ),
          ),
        );
      },
      errorBuilder: (context, error, stackTrace) {
        return SizedBox(
          width: 250,
          height: 350,
          child: Center(
            child: Icon(Icons.broken_image, size: 40, color: Colors.grey[600]),
          ),
        );
      },
    );
  }
}
