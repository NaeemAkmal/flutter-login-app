import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileSettingSub extends StatelessWidget {
  final String title;
  final Widget? secondaryWidget;
  const ProfileSettingSub({super.key, this.secondaryWidget, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      color: Colors.transparent,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(
              title,
              textAlign: TextAlign.left,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
          ),
          secondaryWidget ??
              const Icon(
                FontAwesomeIcons.arrowRight,
                size: 15,
              ),
        ],
      ),
    );
  }
}
