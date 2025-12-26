import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evently/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static Future<UserModel?> login(String emailAddress, String password) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
     return await _getUserInfo(credential.user!.uid);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        throw e.message??"some thing went wrong";
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        throw e.message??"some thing went wrong";
      }
    }
    return null;
  }

  static Future<UserModel?> register(UserModel user, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: user.email,
            password: password,
          );
      String uid = credential.user!.uid;
      user.uid = uid;
    return  await _addUser(user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        throw e.message??"some thing went wrong";
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        throw e.message??"some thing went wrong";
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  static CollectionReference<UserModel> _getUserCollection() {
    CollectionReference<UserModel> users = FirebaseFirestore.instance
        .collection('users')
        .withConverter<UserModel>(
          fromFirestore:
              (snapshot, options) => UserModel.fromJson(snapshot.data()!),
          toFirestore: (value, options) => value.toJson(),
        );
    return users;
  }

  static  _addUser(UserModel user) async {
    CollectionReference<UserModel> usersCollection = _getUserCollection();
    DocumentReference<UserModel> doc = usersCollection.doc(user.uid);
    await doc.set(user);
  }

  static Future<UserModel?> _getUserInfo(String uid) async {
    CollectionReference<UserModel> usersCollection = _getUserCollection();
    DocumentReference<UserModel> doc = usersCollection.doc(uid);
    DocumentSnapshot<UserModel> snapshot = await doc.get();
    return snapshot.data();
  }
}
