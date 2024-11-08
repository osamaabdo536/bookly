import 'package:bookly/Featuers/home/presentation/views/home_details_view.dart';
import 'package:bookly/Featuers/home/presentation/views/home_view.dart';
import 'package:bookly/Featuers/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static const kHomeView = '/homeView';
  static const kHomeDetailsView = '/homeDetailsView';
  static final GoRouter router = GoRouter(
    routes:[
      GoRoute(
        path: '/',
        builder: (context, state) =>  const SplashView()
      ),
      GoRoute(
          path: kHomeView,
          builder: (context, state) =>  const HomeView()
      ),
      GoRoute(
          path: kHomeDetailsView,
          builder: (context, state) =>  const HomeDetailsView()
      ),
    ],
  );
}
