import 'package:cloud_firestore/cloud_firestore.dart';

class MyUser {
  String? uid;
  String? email;
  String? password;
  String? phone;
  String? avatarUrl;
  String? username;
  String? displayname;
  String? frienduid;
  String? chatroomid;
  String? gender;
  bool? isloadingStartUpData = true;
  Timestamp? accountCreated;

  MyUser({
    this.uid,
    this.email,
    this.password,
    this.phone,
    this.avatarUrl,
    this.username,
    this.displayname,
    this.frienduid,
    this.chatroomid,
    this.gender,
    this.accountCreated,
    this.isloadingStartUpData,
  });
}
