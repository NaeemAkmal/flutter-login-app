import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:tyamo/Views/Features/Deviceinfo/Battery%20Info/two_value_card.dart';

class BatteryInfo extends StatelessWidget {
  const BatteryInfo({super.key});

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
            colors: [
              Color(0xFFFAD585),
              Color(0xFFF47A7D),
            ],
          )),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Battery Status:",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w900),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Expanded(
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        child: const Column(
                          children: [
                            Expanded(
                              child: two_value_card(
                                text: "Status",
                                value: "Discharge",
                              ),
                            ),
                            Expanded(
                              child: two_value_card(
                                text: "Charging Type",
                                value: "-",
                              ),
                            ),
                          ],
                        ),
                      )),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: two_value_card(
                                  text: "Charging Percentage",
                                  value: "N/A",
                                  subwidget: SleekCircularSlider(
                                    min: 0,
                                    max: 100,
                                    initialValue: 50,
                                    appearance: CircularSliderAppearance(
                                      customColors: CustomSliderColors(
                                        progressBarColor: Colors.red,
                                      ),
                                      infoProperties: InfoProperties(
                                        mainLabelStyle: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      size: 100,
                                      customWidths: CustomSliderWidths(
                                        progressBarWidth: 8,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Expanded(
                                child: two_value_card(
                                  text: "Temperature",
                                  value: "35.0 °C",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: const Column(
                            children: [
                              Expanded(
                                child: two_value_card(
                                  text: "Battery Health",
                                  value: "Good",
                                ),
                              ),
                              Expanded(
                                child: two_value_card(
                                  text: "Battery Technology",
                                  value: "LI-Poly",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Battery Status:",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.w900),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                child: const Column(
                                  children: [
                                    Expanded(
                                      child: two_value_card(
                                        text: "Status",
                                        value: "Discharge",
                                        txtclr: Colors.white,
                                        clr: Color(0xffF57D7C),
                                      ),
                                    ),
                                    Expanded(
                                      child: two_value_card(
                                        text: "Charging Type",
                                        value: "-",
                                        txtclr: Colors.white,
                                        clr: Color(0xffF57D7C),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                              Expanded(
                                child: Container(
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: two_value_card(
                                          text: "Charging Percentage",
                                          value: "N/A",
                                          clr: const Color(0xffF57D7C),
                                          txtclr: Colors.white,
                                          subwidget: SleekCircularSlider(
                                            min: 0,
                                            max: 100,
                                            initialValue: 50,
                                            appearance:
                                                CircularSliderAppearance(
                                              customColors: CustomSliderColors(
                                                progressBarColor: Colors.red,
                                              ),
                                              infoProperties: InfoProperties(
                                                mainLabelStyle: const TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              size: 100,
                                              customWidths: CustomSliderWidths(
                                                progressBarWidth: 8,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Expanded(
                                        child: two_value_card(
                                          text: "Temperature",
                                          value: "35.0 °C",
                                          txtclr: Colors.white,
                                          clr: Color(0xffF57D7C),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: const Column(
                                    children: [
                                      Expanded(
                                        child: two_value_card(
                                          text: "Battery Health",
                                          clr: Color(0xffF57D7C),
                                          value: "Good",
                                          txtclr: Colors.white,
                                        ),
                                      ),
                                      Expanded(
                                        child: two_value_card(
                                          text: "Battery Technology",
                                          value: "LI-Poly",
                                          clr: Color(0xffF57D7C),
                                          txtclr: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
