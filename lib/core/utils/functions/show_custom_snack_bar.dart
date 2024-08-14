import 'package:flutter/material.dart';

void showCustomSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context)
      .showSnackBar(const SnackBar(content: Text('Cannot lunch Url')));
}
