import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5 / 2,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: NetworkImage(AssetsData.networkImage),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
