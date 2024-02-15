// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:flutter_skeleton/i18n/translations.g.dart';
import 'package:flutter_skeleton/routing/routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    Future.delayed(
      const Duration(seconds: 3),
      () => GoRouter.of(context).goNamed(AppPage.home.name),
    );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FlutterLogo(
              size: 70,
            ),
            const SizedBox(height: 10),
            Text(
              t.example.loading,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
