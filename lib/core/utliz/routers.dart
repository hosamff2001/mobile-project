import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/cart/presentation/view/cart_screen.dart';
import '../../features/home/presentation/view/home_view.dart';
import '../../features/splash_screen/presentation/view/splash_screen.dart';

abstract class MyRoute {
  static const kHomeView = '/home';
  static const kCartScreen = '/cart';

  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kCartScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const CartScreen();
        },
      ),
    ],
  );
}
