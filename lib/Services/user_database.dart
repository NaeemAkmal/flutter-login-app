import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tyamo/Model/my_user.dart';

class UserDatabase {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<bool> createUserInDb(MyUser user) async {
    try {
      await firestore.collection("users").doc(user.uid).set({
        "uid": user.uid,
        "email": user.email,
        "password": user.password,
        "phone": user.phone,
        "avatarUrl": user.avatarUrl,
        "username": user.username,
        "displayname": user.displayname,
        "frienduid": user.frienduid,
        "chatroomid": user.chatroomid,
        "gender": user.gender,
        "accountCreated": Timestamp.now(),
      });
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<MyUser> getUserInfoById(String uid) async {
    MyUser myUser = MyUser();
    DocumentSnapshot<Map<String, dynamic>> documentSnapshot = await firestore
        .collection("users")
        .doc("6jdlOQTGMoOEd2PJ3lyBW4QEOFv2")
        .get();
    myUser.uid = documentSnapshot.data()!['uid'];
    myUser.email = documentSnapshot.data()!['email'];
    myUser.phone = documentSnapshot.data()!['phone'];
    myUser.avatarUrl = documentSnapshot.data()!['avatarUrl'];
    myUser.username = documentSnapshot.data()!['username'];
    myUser.displayname = documentSnapshot.data()!['displayname'];
    myUser.frienduid = documentSnapshot.data()!['frienduid'];
    myUser.chatroomid = documentSnapshot.data()!['chatroomid'];
    myUser.gender = documentSnapshot.data()!['gender'];

    return myUser;
  }
}
