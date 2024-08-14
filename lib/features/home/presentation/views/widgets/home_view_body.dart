import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      physics: const BouncingScrollPhysics(),
      slivers: const [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeaturedBooksListView(),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Best Seller',
                  style: AppStyles.textStyle18,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        BestSellerListView(),
      ],
    );
  }
}
