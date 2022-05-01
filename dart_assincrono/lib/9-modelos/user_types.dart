import 'dart:convert';

class UserType {
  final String id;
  final String userId;
  final String name;

  UserType({
    required this.id,
    required this.userId,
    required this.name,
  });

  factory UserType.fromMap(Map<String, dynamic> map) {
    return UserType(
      id: map['id'] ?? '',
      userId: map['userId'] ?? '',
      name: map['name'] ?? '',
    );
  }

  factory UserType.fromJson(String source) =>
      UserType.fromMap(jsonDecode(source));

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "userId": userId,
      "name": name,
    };
  }

  String toJson() => jsonEncode(toMap());

  @override
  String toString() {
    return " - id: ${id} - Name: ${name}";
  }
}
