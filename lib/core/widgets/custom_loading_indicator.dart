import 'package:flutter/material.dart';

class CustomLoadingIndicator extends StatelessWidget {
  final String message; // Optional loading message

  const CustomLoadingIndicator({super.key, this.message = 'loading'});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Your main content (e.g., other widgets)
        // ...

        // Loading overlay
        Container(
          color: Colors.black.withOpacity(0.5),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(height: 16),
              Text(message, style: const TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ],
    );
  }
}
