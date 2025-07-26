
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:tyamo/Controller/User%20Controller/user_controller.dart';
import 'package:tyamo/Interfaces/Auth/login_services.dart';
import 'package:tyamo/Views/Auth/forgot_password.dart';
import 'package:tyamo/Views/Auth/register.dart';
import 'package:tyamo/Views/Widgets/Auth/auth_heading.dart';
import 'package:tyamo/Views/Widgets/Auth/auth_textfield.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  final LoginServices loginServices = LoginServices();

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
                fontsize: 16.sp,
                logo: 'assets/images/logos.jpg',
                logosize: 18.sp,
                subtext: "to connect with \nyour partner",
              ),
              AuthTextfield(
                controller: loginServices.emailController,
                icon: Icons.alternate_email,
                keyboardtype: TextInputType.emailAddress,
                labeltext: "Email",
                obsecuretext: false,
                sizeall: 15.sp,
              ),
              // TextField(
              //   textAlign: TextAlign.start,
              //   textInputAction: TextInputAction.none,
              //   obscureText: false,
              //   autofocus: false,
              //   style: const TextStyle(fontSize: 14, color: Colors.black),
              //   keyboardType: TextInputType.emailAddress,
              //   textAlignVertical: TextAlignVertical.center,
              //   decoration: InputDecoration(
              //     fillColor: const Color(0xffE7E7F2),
              //     filled: true,
              //     prefixIcon: const Icon(
              //       Icons.alternate_email,
              //       size: 15,
              //     ),
              //     prefixIconColor: const Color.fromARGB(236, 0, 32, 92),
              //     label: const Text(
              //       "Email",
              //       style: TextStyle(
              //         color: Color.fromARGB(255, 10, 4, 4),
              //         fontWeight: FontWeight.w100,
              //         fontSize: 15,
              //       ),
              //     ),
              //     labelStyle: const TextStyle(fontSize: 10, color: Colors.black),
              //     floatingLabelBehavior: FloatingLabelBehavior.never,
              //     border: OutlineInputBorder(
              //       borderSide: BorderSide.none,
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 15,
              ),
              AuthTextfield(
                controller: loginServices.passwordController,
                icon: Icons.password_outlined,
                keyboardtype: TextInputType.text,
                labeltext: "Password",
                obsecuretext: true,
                sizeall: 15.sp,
              ),
              // TextField(
              //   textAlign: TextAlign.start,
              //   textInputAction: TextInputAction.none,
              //   obscureText: true,
              //   autofocus: false,
              //   style: const TextStyle(fontSize: 14, color: Colors.black),
              //   keyboardType: TextInputType.text,
              //   textAlignVertical: TextAlignVertical.center,
              //   decoration: InputDecoration(
              //     fillColor: const Color(0xffE7E7F2),
              //     filled: true,
              //     prefixIcon: const Icon(
              //       Icons.password,
              //       size: 15,
              //     ),
              //     prefixIconColor: const Color(0xff00205c),
              //     label: const Text(
              //       "Password",
              //       style: TextStyle(
              //         color: Color.fromARGB(255, 10, 4, 4),
              //         fontWeight: FontWeight.w100,
              //         fontSize: 15,
              //       ),
              //     ),
              //     labelStyle: const TextStyle(fontSize: 10, color: Colors.black),
              //     floatingLabelBehavior: FloatingLabelBehavior.never,
              //     border: OutlineInputBorder(
              //       borderSide: BorderSide.none,
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //   ),
              // ),
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
                    UserController().loginUser(
                        loginServices.emailController.text,
                        loginServices.passwordController.text);
                    // Timer(const Duration(seconds: 3), () {
                    //   _btnController.success();
                    //   Navigator.pushReplacement(
                    //       context,
                    //       PageTransition(
                    //           type: PageTransitionType.fade,
                    //           child: const ProfileSetup()));
                    // });
                  },
                  child: Text(
                    "Login",
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          child: ForgotPassword()));
                },
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: const Color(0xFFc1272D),
                      fontWeight: FontWeight.w100,
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      color: const Color.fromARGB(247, 128, 126, 126),
                      fontWeight: FontWeight.w100,
                      fontSize: 15.sp,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: Register()));
                    },
                    child: Text(
                      "Sign Up",
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
