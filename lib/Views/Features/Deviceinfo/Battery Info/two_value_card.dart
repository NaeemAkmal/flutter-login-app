import 'package:flutter/material.dart';

class two_value_card extends StatelessWidget {
  final String text;
  final String value;
  final Widget? subwidget;
  final Color? clr;
  final Color? txtclr;
  const two_value_card(
      {super.key, required this.text,
      required this.value,
      this.subwidget,
      this.clr,
      this.txtclr});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      width: double.infinity,
      child: Card(
        color: clr ?? Colors.white,
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            subwidget ??
                Text(
                  value,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: txtclr ?? Colors.red),
                ),
          ],
        ),
      ),
    );
  }
}
