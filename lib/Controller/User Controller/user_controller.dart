import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tyamo/Model/my_user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tyamo/Services/user_database.dart';

class UserController with ChangeNotifier {
  MyUser currentuser = MyUser();
  MyUser get getCurrentUser => currentuser;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  Future<bool> registerUser(String e, String p) async {
    //functionalty
    MyUser user = MyUser();

    try {
      UserCredential authResult = await auth.createUserWithEmailAndPassword(
        email: e,
        password: p,
      );
      UserCredential loginResult = await auth.signInWithEmailAndPassword(
        email: e,
        password: p,
      );

      if (authResult.user != null) {
        print("Add info to database");
        user.uid = authResult.user!.uid;
        user.email = authResult.user!.email;

        user.password = p;
        UserDatabase().createUserInDb(user);
      }
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> loginUser(String e, String p) async {
    try {
      UserCredential loginResult = await auth.signInWithEmailAndPassword(
        email: e,
        password: p,
      );
      if (loginResult.user != null) {
        currentuser = await UserDatabase().getUserInfoById(
          loginResult.user!.uid,
        );
      }
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> signout() async {
    try {
      await auth.signOut();

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  void setcurrentuser(MyUser user) {
    currentuser = user;
    notifyListeners();
  }

  Future<MyUser> checkUserSigninInfo() async {
    try {
      MyUser myUser = MyUser();
      myUser.isloadingStartUpData = true;
      currentuser = myUser;
      auth.authStateChanges().listen((event) async {
        if (event?.uid == null) {
          myUser.uid = null;
          myUser.isloadingStartUpData = false;
          setcurrentuser(myUser);
        } else {
          myUser.uid = event?.uid;
          myUser = await UserDatabase().getUserInfoById(auth.currentUser!.uid);
          myUser.isloadingStartUpData = false;
          setcurrentuser(myUser);
        }
      });
      return myUser;
    } catch (e) {
      print(e);
      return MyUser();
    }
  }
}
