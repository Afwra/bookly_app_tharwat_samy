import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/core/widgets/custome_error_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views_model/similar_books_cubit/similar_books_cubit_cubit.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccessState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CustomBookImage(
                  imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail,
                ),
              ),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
            ),
          );
        } else if (state is SimilarBooksFailureState) {
          return CustomErrorWidget(state.errMsg);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
