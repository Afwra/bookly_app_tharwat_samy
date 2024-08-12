import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating_row.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.2),
              child: const CustomBookImage(),
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
            BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
