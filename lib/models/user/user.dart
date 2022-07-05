class UserComplete {
  final String id;
  final String name;
  final String email;

  UserComplete({
    required this.id,
    required this.email,
    required this.name,
  });

  factory UserComplete.fromJson(Map<String, dynamic> json) {
    return UserComplete(
      id: json['id'],
      email: json['email'],
      name: json['name'],
    );
  }
}
