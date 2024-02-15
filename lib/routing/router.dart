// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:flutter_skeleton/features/example/presentation/example_screen.dart';
import 'package:flutter_skeleton/features/splash/presentation/splash_screen.dart';
import 'package:flutter_skeleton/routing/routes.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final Provider<GoRouter> routerProvider =
    Provider<GoRouter>((ProviderRef<GoRouter> ref) {
  final RouterNotifier router = RouterNotifier();

  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: router._routes,
    initialLocation: AppPage.splash.path,
  );
});

class RouterNotifier extends ChangeNotifier {
  RouterNotifier();

  List<RouteBase> get _routes => <RouteBase>[
        GoRoute(
          name: AppPage.splash.name,
          path: AppPage.splash.path,
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            key: state.pageKey,
            child: const SplashScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                    FadeTransition(
              opacity: animation,
              child: child,
            ),
          ),
        ),
        GoRoute(
          name: AppPage.home.name,
          path: AppPage.home.path,
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            key: state.pageKey,
            child: const ExampleScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                    FadeTransition(
              opacity: animation,
              child: child,
            ),
          ),
        ),
      ];
}
