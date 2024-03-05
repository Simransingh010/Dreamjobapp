import 'dart:convert';

import 'package:collection/collection.dart';

class Jsonclass {
  int? postId;
  int? id;
  String? name;
  String? email;
  String? body;

  Jsonclass({this.postId, this.id, this.name, this.email, this.body});

  @override
  String toString() {
    return 'Jsonclass(postId: $postId, id: $id, name: $name, email: $email, body: $body)';
  }

  factory Jsonclass.fromMap(Map<String, dynamic> data) => Jsonclass(
        postId: data['postId'] as int?,
        id: data['id'] as int?,
        name: data['name'] as String?,
        email: data['email'] as String?,
        body: data['body'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'postId': postId,
        'id': id,
        'name': name,
        'email': email,
        'body': body,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Jsonclass].
  factory Jsonclass.fromJson(String data) {
    return Jsonclass.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Jsonclass] to a JSON string.
  String toJson() => json.encode(toMap());

  Jsonclass copyWith({
    int? postId,
    int? id,
    String? name,
    String? email,
    String? body,
  }) {
    return Jsonclass(
      postId: postId ?? this.postId,
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      body: body ?? this.body,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Jsonclass) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode =>
      postId.hashCode ^
      id.hashCode ^
      name.hashCode ^
      email.hashCode ^
      body.hashCode;
}
