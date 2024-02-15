// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_skeleton/features/example/data/example_repository.dart';
import 'package:flutter_skeleton/features/example/domain/example_user.dart';

part 'example_controller.g.dart';

/// To understand more about riverpod code generation, please refer to:
/// https://riverpod.dev/fr/docs/concepts/about_code_generation
@riverpod
Future<ExampleUser> getExampleUser(GetExampleUserRef ref) async {
  final exampleRepository = ref.watch(exampleRepositoryProvider);

  return exampleRepository.getUser();
}
