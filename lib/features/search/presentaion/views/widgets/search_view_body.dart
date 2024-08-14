import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentaion/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 30,
          ),
          Text(
            'Search Results',
            style: AppStyles.textStyle18,
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20, left: 16, right: 16),
          child: Text('hello'),
          // child: BookListViewItem(),
        );
      },
      itemCount: 10,
    );
  }
}
