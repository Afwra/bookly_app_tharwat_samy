import 'package:bookly/core/widgets/custome_error_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:bookly/features/home/presentation/views_model/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccessState) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 16, right: 16),
                child: BookListViewItem(
                  book: state.books[index],
                ),
              ),
              childCount: 10,
            ),
          );
        } else if (state is NewestBooksFailureState) {
          return SliverToBoxAdapter(child: CustomErrorWidget(state.errMsg));
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
