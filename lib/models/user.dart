import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  User({this.id, this.name, this.email, this.password});
  User.fromDocument(DocumentSnapshot document) {
    id = document.documentID;
    name = document.data['name'] as String;
    email = document.data['email'] as String;
  }

  String id;
  String name;
  String email;
  String password;
  String confirmPassword;

  DocumentReference get user => Firestore.instance.document('users/$id');

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
    };
  }

  Future<void> saveData() async {
    await user.setData(toMap());
  }
}
