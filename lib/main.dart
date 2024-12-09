import 'package:bookly/Featuers/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/Featuers/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly/Featuers/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Featuers/home/domain/entities/book_entity.dart';
import 'package:bookly/Featuers/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:bookly/Featuers/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:bookly/Featuers/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Featuers/home/presentation/manger/newest_book_cubit/newest_books_cubit.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/functions/setup_service_locator.dart';
import 'package:bookly/core/utils/simple_bloc_observer.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

import 'constants.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  setupServiceLocator();
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  Bloc.observer = SimpleBLockObserver();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          return FeaturedBooksCubit(
            FetchFeaturedBooksUseCase(
              homeRepo: getIt.get<HomeRepoImpl>(),
            ),
          );
        }),
        BlocProvider(create: (context) {
          return NewestBooksCubit(
            FetchNewestBooksUseCase(
              homeRepo: getIt.get<HomeRepoImpl>(),
            ),
          );
        }),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
