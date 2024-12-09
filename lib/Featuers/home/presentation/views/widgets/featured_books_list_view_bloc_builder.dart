import 'package:bookly/Featuers/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'featured_books_list_view.dart';

class FeaturedBooksListViewBLocBuilder extends StatelessWidget {
  const FeaturedBooksListViewBLocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if(state is FeaturedBooksSuccess){
          return const FeaturedBooksListView();
        }else if(state is FeaturedBooksFailure){
          return Text(state.errMessage);
        }else{
          return const CircularProgressIndicator();
        }
      },
    );
  }
}