import 'package:bookly/Featuers/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Featuers/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/Featuers/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'books_action.dart';
import 'custom_book_details_app_bar.dart';

class HomeDetailsViewBody extends StatelessWidget {
  const HomeDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                SizedBox(
                  width: width * 0.48,
                  child: const CustomBookImage(),
                ),
                const SizedBox(
                  height: 46,
                ),
                const Text(
                  'The Jungle Book',
                  style: Styles.textStyle30,
                ),
                const SizedBox(
                  height: 6,
                ),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    'Rudyard Kipling',
                    style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 36,
                ),
                const BooksAction(),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle16,
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                const SimilarBooksListView(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}