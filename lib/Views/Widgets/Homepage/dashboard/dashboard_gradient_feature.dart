import 'package:flutter/material.dart';

class DashboardGradientFeature extends StatelessWidget {
  final String iconimg;
  final String btntext;
  final List<Color> clr;
  final FontWeight? weight;

  const DashboardGradientFeature(
      {super.key, required this.btntext,
      required this.clr,
      required this.iconimg,
      this.weight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(
              15,
            ),
          ),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0.0, 3.0),
              blurRadius: 3.0,
              color: Colors.grey,
            ),
          ],
          gradient: LinearGradient(
            colors: clr,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 35,
                width: 35,
                child: Image.asset(
                  iconimg,
                  filterQuality: FilterQuality.high,
                ),
              ),
              Flexible(
                child: Text(
                  btntext,
                  style: TextStyle(fontWeight: weight ?? FontWeight.w300),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
