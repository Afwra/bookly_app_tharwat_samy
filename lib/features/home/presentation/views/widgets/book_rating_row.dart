import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          '4.8',
          style: AppStyles.textStyle16,
        ),
        const SizedBox(
          width: 9,
        ),
        Text(
          '(2540)',
          style: AppStyles.textStyle14
              .copyWith(color: Colors.white.withOpacity(0.5)),
        )
      ],
    );
  }
}
