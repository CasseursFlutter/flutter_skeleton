import 'package:freezed_annotation/freezed_annotation.dart';

part 'example_user.freezed.dart';
part 'example_user.g.dart';

@freezed
class ExampleUser with _$ExampleUser {
  const factory ExampleUser({
    required String title,
    required String first,
    required String last,
  }) = _ExampleUser;

  factory ExampleUser.fromJson(Map<String, Object?> json) =>
      _$ExampleUserFromJson(json);
}
