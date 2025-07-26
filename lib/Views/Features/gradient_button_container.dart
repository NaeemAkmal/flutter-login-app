import 'package:flutter/material.dart';

class gradient_button_conatiner extends StatelessWidget {
  final String title;
  final List<Color> clr;
  final Color overlayColor;
  final bool isGradientvertical;
  const gradient_button_conatiner(
      {super.key, required this.title,
      required this.clr,
      required this.overlayColor,
      required this.isGradientvertical});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            elevation: 10,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: isGradientvertical
                      ? Alignment.topCenter
                      : Alignment.centerLeft,
                  end: isGradientvertical
                      ? Alignment.bottomCenter
                      : Alignment.centerRight,
                  colors: clr,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: WidgetStateProperty.all<double>(0),
                  overlayColor: WidgetStateProperty.all<Color>(overlayColor),
                  padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.all(0),
                  ),
                  backgroundColor: WidgetStateProperty.all<Color>(
                    Colors.transparent,
                  ),
                ),
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
