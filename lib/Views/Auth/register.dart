// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:tyamo/Controller/User%20Controller/user_controller.dart';
import 'package:tyamo/Interfaces/Auth/register_services.dart';
import 'package:tyamo/Views/Auth/login.dart';
import 'package:tyamo/Views/Widgets/Auth/auth_heading.dart';
import 'package:tyamo/Views/Widgets/Auth/auth_textfield.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Register extends StatelessWidget {
  Register({super.key});

  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  final RegisterServices registerServices = RegisterServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tyamo",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xff000221),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              AuthHeading(
                maintext: "Sign in to",
                fontsize: (18.sp),
                logo: 'assets/images/logos.jpg',
                logosize: (18.sp),
                subtext: "to connect with \nyour partner",
              ),
              AuthTextfield(
                controller: registerServices.emailController,
                icon: Icons.alternate_email,
                keyboardtype: TextInputType.emailAddress,
                labeltext: "Email",
                obsecuretext: false,
                sizeall: 15.sp,
              ),
              const SizedBox(
                height: 15,
              ),
              AuthTextfield(
                controller: registerServices.passwordController,
                icon: Icons.password_outlined,
                keyboardtype: TextInputType.text,
                labeltext: "Password",
                obsecuretext: true,
                sizeall: 15.sp,
              ),
              const SizedBox(
                height: 10,
              ),
              AuthTextfield(
                controller: registerServices.confirmPasswordController,
                icon: Icons.lock_reset_outlined,
                keyboardtype: TextInputType.text,
                labeltext: "Confirm Password",
                obsecuretext: false,
                sizeall: 15.sp,
              ),
              const SizedBox(
                height: 10,
              ),
              Hero(
                tag: "AUTH",
                child: RoundedLoadingButton(
                  width: 600,
                  borderRadius: 10,
                  controller: _btnController,
                  color: const Color(0xff00c1AA),
                  onPressed: () {
                    if (registerServices.passwordController.text ==
                        registerServices.confirmPasswordController.text) {
                      UserController().registerUser(
                        registerServices.emailController.text,
                        registerServices.passwordController.text,
                      );
                    } else {
                      print("Password mismatch triggered");
                      // AchievementView(
                      //   context,
                      //   title: "Error",
                      //   subTitle: "Passwords do not match",
                      //   color: const Color(0xFFFF5252),
                      //   icon: const Icon(Icons.error, color: Colors.white),
                      //   duration: const Duration(seconds: 2),
                      // ).show(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Passwords do not match"),
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.red,
                          duration: Duration(seconds: 2),
                        ),
                      );
                    }
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 10, 4, 4),
                      fontWeight: FontWeight.w100,
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "By registering you agree to our terms and conditions",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 118, 118, 118),
                    fontWeight: FontWeight.w100,
                    fontSize: 9.sp,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Registered ",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 10, 2, 2),
                      fontWeight: FontWeight.w100,
                      fontSize: 15.sp,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade, child: Login()));
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 12, 73, 195),
                        fontWeight: FontWeight.w100,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
