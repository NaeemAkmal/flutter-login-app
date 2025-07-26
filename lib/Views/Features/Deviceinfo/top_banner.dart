import 'package:flutter/material.dart';

class TopBanner extends StatelessWidget {
  final String title;
  final List<Color> clr;
  const TopBanner({super.key, 
    required this.title,
    required this.clr,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xff000221),
        gradient: LinearGradient(colors: clr),
      ),
      child: Text(
       title,
        style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            letterSpacing: 2),
      ),
    );
  }
}
