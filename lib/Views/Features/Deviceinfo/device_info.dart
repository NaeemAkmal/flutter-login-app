import 'package:flutter/material.dart';
import 'package:tyamo/Views/Features/Deviceinfo/top_banner.dart';
import 'package:tyamo/Views/Features/gradient_button_container.dart';

class DeviceInfo extends StatelessWidget {
  const DeviceInfo({super.key});

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
        body: Column(
          children: [
            const TopBanner(
              title: "Device info",
              clr: [Colors.greenAccent, Colors.green],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    const Expanded(
                        child: Column(
                      children: [
                        Expanded(
                          child: gradient_button_conatiner(
                            title: "User Status",
                            clr: [
                              Color(0xFF86AAE9),
                              Color(0xFF92E9E3),
                            ],
                            overlayColor: Colors.cyan,
                            isGradientvertical: true,
                          ),
                        ),
                        Expanded(
                          child: gradient_button_conatiner(
                            title: "Battery",
                            clr: [
                              Color(0xFFFAD585),
                              Color(0xFFF47A7D),
                            ],
                            overlayColor: Colors.orangeAccent,
                            isGradientvertical: false,
                          ),
                        ),
                      ],
                    )),
                    Expanded(
                        child: Container(
                      child: gradient_button_conatiner(
                          title: "General",
                          clr: const [
                            Color(0xFF50C9C2),
                            Color(0xFF95DEDA),
                          ],
                          overlayColor: Colors.teal.shade300,
                          isGradientvertical: true),
                    )),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: const gradient_button_conatiner(
                            title: "Device Specs",
                            clr: [
                              Color(0xFF02A9AF),
                              Color(0xFF00CDAC),
                            ],
                            overlayColor: Color(0xff01BCAA),
                            isGradientvertical: true),
                      ),
                    ),
                    Expanded(
                        flex: 10,
                        child: Column(
                          children: [
                            Expanded(
                              child: gradient_button_conatiner(
                                title: "Location",
                                clr: const [
                                  Color(0xFFB893D6),
                                  Color(0xFF8CA5DB),
                                ],
                                overlayColor: Colors.purple.shade400,
                                isGradientvertical: false,
                              ),
                            ),
                            Expanded(
                              child: gradient_button_conatiner(
                                title: "Orientation",
                                clr: [
                                  Colors.deepOrange.shade200,
                                  Colors.deepOrange.shade900,
                                ],
                                overlayColor: Colors.orange,
                                isGradientvertical: false,
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
