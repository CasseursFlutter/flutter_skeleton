// Dart imports:
import 'dart:async';

// Package imports:
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_skeleton/features/example/domain/example_user.dart';
import 'package:flutter_skeleton/utils/dio_provider.dart';

part 'example_repository.g.dart';

class ExampleRepository {
  ExampleRepository({required this.client});
  final Dio client;

  Future<ExampleUser> getUser() async {
    final url = Uri(
      scheme: 'https',
      host: 'randomuser.me',
      path: 'api',
      queryParameters: {
        'inc': 'name',
      },
    ).toString();

    final response = await client.get(url);

    return switch (response) {
      Response(statusCode: 200, data: final data) =>
        ExampleUser.fromJson(data['results'][0]),
      _ => throw Exception(),
    };
  }
}

@riverpod
ExampleRepository exampleRepository(ExampleRepositoryRef ref) =>
    ExampleRepository(
      client: ref.watch(dioProvider),
    );
