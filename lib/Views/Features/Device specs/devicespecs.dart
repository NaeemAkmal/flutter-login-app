import 'package:flutter/material.dart';
import 'package:tyamo/Views/Features/Deviceinfo/Battery%20Info/two_value_card.dart';

class Devicespecs extends StatelessWidget {
  const Devicespecs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: SizedBox(
          height: 110,
          width: 110,
          child: Image.asset(
            'assets/images/logo.jpg',
            filterQuality: FilterQuality.high,
            fit: BoxFit.fitHeight,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white10,
        leading: IconButton(
            color: Colors.black12,
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF02A9AF),
            Color(0xFF00CDAC),
          ],
        )),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Device Information:",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w800),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    child: Column(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Container(
                              child: const two_value_card(
                                  text: "Total Ram", value: "7.36 GB"),
                            )),
                        Expanded(
                            flex: 2,
                            child: Container(
                              child: const two_value_card(
                                  text: "Referesh Rate", value: "60 Hz"),
                            )),
                        Expanded(
                            flex: 3,
                            child: Container(
                              child: const two_value_card(
                                  text: "Fingerprint Sensor", value: "Present"),
                            )),
                        Expanded(
                            flex: 3,
                            child: Container(
                              child: const two_value_card(
                                  text: "Fingerprint Sensor", value: "Yes"),
                            )),
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    child: Column(
                      children: [
                        Expanded(
                            child: Container(
                          child: const two_value_card(
                              text: "Internal Memory",
                              value: "65.97 / 110.05 GB"),
                        )),
                        Expanded(
                            child: Container(
                          child: const two_value_card(
                              text: "External Memory", value: "N/A"),
                        )),
                        Expanded(
                            child: Container(
                          child: const two_value_card(
                              text: "Screen Size", value: "6.96 inches"),
                        )),
                        Expanded(
                            child: Container(
                          child: const two_value_card(
                              text: "Resolution", value: "2134x1080"),
                        )),
                      ],
                    ),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
