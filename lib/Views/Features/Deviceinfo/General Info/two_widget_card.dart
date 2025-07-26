import 'package:flutter/material.dart';

class TwoWidgetCard extends StatelessWidget {
  final String text1;
  final String value1;
  final Widget? subwidget1;
  final Color? clr1;
  final Color? txtclr1;
  final String text2;
  final String value2;
  final Widget? subwidget2;
  final Color? clr2;
  final Color? txtclr2;
  const TwoWidgetCard(
      {super.key, required this.text1,
      required this.value1,
      this.subwidget1,
      this.clr1,
      this.txtclr1,
      required this.text2,
      required this.value2,
      this.subwidget2,
      this.clr2,
      this.txtclr2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      width: double.infinity,
      child: Card(
        color: clr1 ?? Colors.white,
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  Text(
                    text1,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  subwidget1 ??
                      Text(
                        value1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: txtclr1 ?? Colors.redAccent),
                      ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    text2,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  subwidget2 ??
                      Text(
                        value2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: txtclr2 ?? Colors.redAccent),
                      ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
