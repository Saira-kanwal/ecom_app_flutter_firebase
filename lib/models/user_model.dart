import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel
{
  final String? id;
  final String? role;
  final String? name;
  final String? email;

  UserModel({
    this.id,
    this.role,
    this.name,
    this.email,
  });

  factory UserModel.fromSnapshot(DocumentSnapshot snapshot)
  {
    return UserModel(
      id: snapshot.id,
      role: snapshot.get("role"),
      name: snapshot.get("name"),
      email: snapshot.get("email"),
    );
  }


  toSnapshot()
  {
    return {
      "role" : role,
      "name" : name,
      "email" : email,
    };
  }
}