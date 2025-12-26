import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String name;
  String email;
  String? uid;
  UserModel({required this.email, required this.name, this.uid});

  Map<String, dynamic> toJson() {
    return {'name': name, 'email': email, 'uid': uid};
  }

  static UserModel fromJson(Map<String, dynamic> Json) {
    return UserModel(
      email: Json['email'],
      name: Json['name'],
      uid: Json['uid'],
    );
  }
}
