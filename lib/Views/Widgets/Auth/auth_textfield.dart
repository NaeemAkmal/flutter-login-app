import 'package:flutter/material.dart';

class AuthTextfield extends StatelessWidget {
  final TextInputType keyboardtype;
  final String labeltext;
  final bool obsecuretext;
  final IconData icon;
  final double sizeall;
  final TextEditingController controller;
  const AuthTextfield({
    super.key,
    required this.icon,
    required this.controller,
    required this.keyboardtype,
    required this.labeltext,
    required this.obsecuretext,
    required this.sizeall,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textAlign: TextAlign.start,
      textInputAction: TextInputAction.none,
      obscureText: obsecuretext,
      autofocus: false,
      style: const TextStyle(fontSize: 14, color: Colors.black),
      keyboardType: keyboardtype,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        fillColor: const Color(0xffE7E7F2),
        filled: true,
        prefixIcon: Icon(
          icon,
          size: sizeall,
        ),
        prefixIconColor: const Color.fromARGB(236, 0, 32, 92),
        label: Text(
          labeltext,
          style: TextStyle(
            color: const Color.fromARGB(255, 10, 4, 4),
            fontWeight: FontWeight.w100,
            fontSize: sizeall,
          ),
        ),
        labelStyle: const TextStyle(fontSize: 10, color: Colors.black),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
