import 'package:flutter_application_1/User/Model/usermodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class UserRemote {
  Future<void> post_user({required User user});
  Future<dynamic> get_users();
  Future<void> delete_user({required int userid});
  Future<void> edit_user({required User userUpdate});
}

class UserRemoteImp extends UserRemote {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String userpath = 'User';
  @override
  Future<dynamic> get_users() async {
    try {
      final res = await firestore
          .collection('User')
          .get()
          .then((value) => Future.value(value))
          .catchError((error) => print("Failed to add user: $error"));
    } catch (error) {
      print(error);
    }
  }

  @override
  Future<void> post_user({required User user}) async {
    await firestore
        .collection(userpath)
        .doc(user.personID.toString())
        .set(user.toMap())
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  @override
  Future<void> delete_user({required int userid}) async {
    await firestore
        .collection(userpath)
        .doc(userid.toString())
        .delete()
        .then((value) => print("User deleted"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  @override
  Future<void> edit_user({required User userUpdate}) async {
    await firestore
        .collection(userpath)
        .doc(userUpdate.personID.toString())
        .set(userUpdate.toMap())
        .then((value) => print("User Updated"))
        .catchError((error) => print("Failed to add user: $error"));
  }
}
