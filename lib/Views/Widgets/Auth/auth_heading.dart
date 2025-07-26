import 'package:flutter/material.dart';

class AuthHeading extends StatelessWidget {
  final String maintext;
  final String subtext;
  final String logo;
  final double fontsize;
  final double logosize;

  const AuthHeading(
      {super.key, required this.maintext,
      required this.logo,
      required this.logosize,
      required this.subtext,
      required this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Text(
              maintext,
              style: TextStyle(
                color: const Color(0xff00205c),
                fontSize: fontsize,
              ),
            ),
            SizedBox(
              height: logosize,
              width: logosize,
              child: Image.asset(
                logo,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
          ],
        ),
        Text(
          subtext,
          style:  TextStyle(
            color: const Color(0xff00205c),
            fontSize: fontsize,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
