import 'package:flutter/material.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:tyamo/Interfaces/Auth/forgot_services.dart';
import 'package:tyamo/Views/Widgets/Auth/auth_heading.dart';
import 'package:tyamo/Views/Widgets/Auth/auth_textfield.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  final ForgotServices forgotServices = ForgotServices();

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
        child: Container(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              AuthHeading(
                  maintext: "Forgot Your Password? ",
                  logo: 'assets/images/logos.jpg',
                  logosize: 30.sp,
                  subtext: "",
                  fontsize: 20.sp),
              SizedBox(
                height: 150,
                width: 150,
                child: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/6195/6195700.png",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "To request for a new one,type your email address below,A link to reset the password will be sent to that email. ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.sp),
              ),
              const SizedBox(height: 20),
              AuthTextfield(
                  controller: forgotServices.emailController,
                  icon: Icons.alternate_email_outlined,
                  keyboardtype: TextInputType.emailAddress,
                  labeltext: "Email",
                  obsecuretext: false,
                  sizeall: 15),
              const SizedBox(height: 30),
              Hero(
                tag: "AUTH",
                child: RoundedLoadingButton(
                  width: 600,
                  borderRadius: 10,
                  controller: _btnController,
                  color: const Color(0xff00c1AA),
                  onPressed: () {},
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
            ],
          ),
        ),
      ),
    );
  }
}
