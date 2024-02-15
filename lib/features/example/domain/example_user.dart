/// Simple class representing the user UID and email.
class ExampleUser {
  final String title;
  final String first;
  final String last;

  const ExampleUser({
    required this.title,
    required this.first,
    required this.last,
  });

  static ExampleUser fromJson(Map<String, dynamic> json) {
    return ExampleUser(
      title: json['name']['title'],
      first: json['name']['first'],
      last: json['name']['last'],
    );
  }
}

//TODO use freezed
