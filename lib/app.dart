// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:flutter_skeleton/routing/router.dart';
import 'package:flutter_skeleton/theme/theme.dart';

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: 'Example Skeleton',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light().copyWith(
        textTheme: AppTheme.light().textTheme.merge(AppTheme.text()),
      ),
      darkTheme: AppTheme.dark().copyWith(
        textTheme: AppTheme.dark().textTheme.merge(AppTheme.text()),
      ),
      themeMode: ThemeMode.system,
      routerConfig: router,
    );
  }
}
