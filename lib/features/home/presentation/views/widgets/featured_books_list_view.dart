import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.26,
      child: ListView.builder(
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 8),
          child: CustomBookImage(),
        ),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
