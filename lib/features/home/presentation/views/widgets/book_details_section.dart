import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating_row.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: const CustomBookImage(
            imageUrl: AssetsData.networkImage,
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          'The Jungle Book',
          style: AppStyles.textStyle30.copyWith(
              fontWeight: FontWeight.normal,
              fontFamily: 'GT Sectra Fine Regular'),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          'Rudyard Kipling',
          style: AppStyles.textStyle18.copyWith(
            color: Colors.white.withOpacity(0.7),
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          count: 1234,
          rating: 4.8,
        ),
        const SizedBox(
          height: 38,
        ),
        const BooksAction(),
      ],
    );
  }
}
