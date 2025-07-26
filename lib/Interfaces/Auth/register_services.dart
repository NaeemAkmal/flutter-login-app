import 'package:flutter/widgets.dart';
import 'package:tyamo/Controller/User%20Controller/user_controller.dart';

class RegisterServices {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  UserController current = UserController();
}
