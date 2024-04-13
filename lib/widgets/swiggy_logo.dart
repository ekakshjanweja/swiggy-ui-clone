import 'package:flutter/material.dart';

class ImageNetwork extends StatelessWidget {
  final double scale;
  final String src;
  const ImageNetwork({
    super.key,
    required this.scale,
    required this.src,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(1000000000),
      child: Image.network(
        scale: scale,
        fit: BoxFit.cover,
        src,
      ),
    );
  }
}
