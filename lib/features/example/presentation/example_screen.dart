// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:flutter_skeleton/features/example/presentation/controllers/example_controller.dart';
import 'package:flutter_skeleton/i18n/translations.g.dart';
import 'package:flutter_skeleton/utils/async_value_ui.dart';

class ExampleScreen extends ConsumerWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final user = ref.watch(getExampleUserProvider);
    ref.listen(getExampleUserProvider, (prev, state) {
      if (state.hasError) {
        state.showSnackbarOnError(context);
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Screen'),
      ),
      body: Center(
          child: user.when(
        data: (data) => Text(t.example.hello(name: data.first)),
        error: (error, stackTrace) => const Text(''),
        loading: () => const CircularProgressIndicator(),
      )),
    );
  }
}
