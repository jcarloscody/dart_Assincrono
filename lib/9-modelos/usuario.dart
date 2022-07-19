import 'dart:convert';

import 'user_types.dart';

class Usuario {
  final String id;
  final String name;
  final String userName;
  final List<UserType>? userType;

  Usuario({
    required this.id,
    required this.name,
    required this.userName,
    required this.userType,
  });

  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      userName: map['user_name'] ?? '',
      userType: map['user_type']
              ?.map<UserType>((item) => UserType.fromMap(item))
              .toList() ??
          [],
    );
  }

  factory Usuario.fromJson(String source) =>
      Usuario.fromMap(jsonDecode(source));

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "userName": userName,
      "userType": userType?.map((e) => e.toMap()).toList(),
    };
  }

  String toJson() => jsonEncode(toMap());

  @override
  String toString() {
    return "- id: ${id} - Usuario: ${userName}";
  }
}
