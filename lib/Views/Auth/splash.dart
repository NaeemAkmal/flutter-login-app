import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tyamo/Controller/User%20Controller/user_controller.dart';
import 'package:tyamo/Views/Auth/splash_loader_animation.dart';
import 'package:tyamo/Views/Root/root.dart';

class Splash extends StatelessWidget {
  UserController userController = UserController();

  Splash({super.key});

  @override
  Widget build(BuildContext context) {
    userController = Provider.of<UserController>(context, listen: false);
    if (userController.currentuser.uid == null) {
      return FutureBuilder(
        future: userController.checkUserSigninInfo(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Root();
          } else {
            return const SplashLoaderAnimation();
          }
        },
      );
    } else {
      return Root();
    }
  }
}
