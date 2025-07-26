import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tyamo/Controller/User%20Controller/user_controller.dart';
import 'package:tyamo/Views/Auth/login.dart';
import 'package:tyamo/Views/Auth/splash_loader_animation.dart';
import 'package:tyamo/Views/HomePage/homepage.dart';
import 'package:tyamo/Views/Invitation/invite_friend.dart';
import 'package:tyamo/Views/Profile/profile_setup.dart';

enum AuthStatus {
  firstTime,
  authenticating,
  notLoggedIn,
  loggedInHome,
  noProfile,
  noFriend,
}

class Root extends StatelessWidget {
  AuthStatus authStatus = AuthStatus.authenticating;

  Root({super.key});

  @override
  Widget build(BuildContext context) {
    UserController userController =
        Provider.of<UserController>(context, listen: true);
    return FutureBuilder(
      future: null,
      builder: (context, snapshot) {
        if (userController.currentuser.uid == null) {
          authStatus = AuthStatus.notLoggedIn;
        }
        if (userController.currentuser.uid != null) {
          if (userController.currentuser.displayname == null) {
            authStatus = AuthStatus.noProfile;
          }
          if (userController.currentuser.displayname != null &&
              userController.currentuser.frienduid == null) {
            authStatus = AuthStatus.noFriend;
          }
          if (userController.currentuser.displayname != null &&
              userController.currentuser.frienduid != null) {
            authStatus = AuthStatus.loggedInHome;
          }
        }
        switch (authStatus) {
          case AuthStatus.authenticating:
            return const SplashLoaderAnimation();
          case AuthStatus.noProfile:
            return const ProfileSetup();
          case AuthStatus.noFriend:
            return const InviteFriend();
          case AuthStatus.notLoggedIn:
            return Login();
          case AuthStatus.loggedInHome:
            return const Homepage();
          case AuthStatus.firstTime:
            return Container();

          // ignore: unreachable_switch_default
          default:
            return const SplashLoaderAnimation();
        }
      },
    );
  }
}
