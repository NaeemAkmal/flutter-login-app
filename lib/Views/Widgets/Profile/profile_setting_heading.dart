import 'package:flutter/material.dart';

class ProfileSettingHeading extends StatelessWidget {
  final String headingtext;
  const ProfileSettingHeading({super.key, required this.headingtext});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      alignment: Alignment.centerLeft,
      child: Text(
        headingtext,
        textAlign: TextAlign.left,
        style: const TextStyle(
          color: Colors.deepPurple,
          fontSize: 16,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
