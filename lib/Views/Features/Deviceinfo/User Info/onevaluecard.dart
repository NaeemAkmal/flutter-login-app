import 'package:flutter/material.dart';

class onevaluecard extends StatelessWidget {
  final String value;
  final Color? clr;
  final Color? txtclr;
  const onevaluecard({super.key, required this.value, required this.clr, this.txtclr});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      width: 160,
      child: Card(
        color: clr,
        elevation: 10,
        child: Center(
          child: Column(
            children: [
              Expanded(
                  child: Align(
                alignment: Alignment.center,
                child: Text(
                  value,
                  style: TextStyle(
                      color: txtclr ?? Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w900),
                  textAlign: TextAlign.center,
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
