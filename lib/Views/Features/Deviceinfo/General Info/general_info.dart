// import 'package:flutter/material.dart';
// import 'package:tyamo/Views/Features/Deviceinfo/Battery%20Info/two_value_card.dart';
// import 'package:tyamo/Views/Features/Deviceinfo/General%20Info/two_widget_card.dart';

// class GeneralInfo extends StatelessWidget {
//   const GeneralInfo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         title: SizedBox(
//           height: 110,
//           width: 110,
//           child: Image.asset(
//             'assets/images/logo.jpg',
//             filterQuality: FilterQuality.high,
//             fit: BoxFit.fitHeight,
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.white10,
//         leading: IconButton(
//             color: Colors.black12,
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             icon: const Icon(
//               Icons.arrow_back_ios_new,
//               color: Colors.black,
//             )),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Color(0xFF50C9C2),
//               Color(0xFF95DEDA),
//             ],
//           ),
//         ),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 40,
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 30.0),
//               child: Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   "General Info:",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w800),
//                   textAlign: TextAlign.left,
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 10,
//               child: Container(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: 20,
//                 ),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Container(
//                         child: Column(
//                           children: [
//                             Expanded(
//                                 child: two_value_card(
//                               text: "Screen State",
//                               value: "Unlocked",
//                               txtclr: Color(0xff55CAC4),
//                             )),
//                             Expanded(
//                                 flex: 2,
//                                 child: TwoWidgetCard(
//                                   text1: "System Volume",
//                                   value1: "0 / 7",
//                                   txtclr1: Color(0xff55CAC4),
//                                   text2: "Media Volume",
//                                   value2: "4 / 7",
//                                   txtclr2: Color(0xff55CAC4),
//                                 )),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Container(
//                         child: Column(
//                           children: [
//                             Expanded(
//                                 flex: 2,
//                                 child: TwoWidgetCard(
//                                   text1: "Light Activity",
//                                   value1: "Dim Light",
//                                   txtclr1: Color(0xff55CAC4),
//                                   text2: "Light Intensity",
//                                   value2: "4 ",
//                                   txtclr2: Color(0xff55CAC4),
//                                 )),
//                             Expanded(
//                                 child: two_value_card(
//                               text: "Brightness",
//                               value: "4.88%",
//                               txtclr: Color(0xff55CAC4),
//                             )),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Text("Last Updated: 2 minutes ago",
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 17,
//                     fontWeight: FontWeight.bold)),
//             SizedBox(
//               height: 20,
//             ),
//             Expanded(
//               flex: 10,
//               child: Container(
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(50),
//                     topRight: Radius.circular(50),
//                   ),
//                 ),
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 30.0),
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           "My General Info:",
//                           style: TextStyle(
//                               color: Colors.grey.shade400,
//                               fontSize: 20,
//                               fontWeight: FontWeight.w600),
//                           textAlign: TextAlign.left,
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Expanded(
//                       child: Container(
//                         child: Row(
//                           children: [
//                             Expanded(
//                               child: Container(
//                                 child: Column(
//                                   children: [
//                                     Expanded(
//                                       child: two_value_card(
//                                         text: "Screen State",
//                                         value: "Unlocked",
//                                         txtclr: Colors.white,
//                                         clr: Color(0xff55CAC4),
//                                       ),
//                                     ),
//                                     Expanded(
//                                         flex: 2,
//                                         child: TwoWidgetCard(
//                                           text1: "System Volume",
//                                           value1: "0 / 7",
//                                           txtclr1: Colors.white,
//                                           clr1: Color(0xff55CAC4),
//                                           text2: "Media Volume",
//                                           value2: "4 / 7",
//                                           txtclr2: Colors.white,
//                                           clr2: Color(0xff55CAC4),
//                                         )),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             Expanded(
//                               child: Container(
//                                 child: Column(
//                                   children: [
//                                     Expanded(
//                                         flex: 2,
//                                         child: TwoWidgetCard(
//                                           text1: "Light Activity",
//                                           value1: "Dim Light",
//                                           txtclr1: Colors.white,
//                                           clr1: Color(0xff55CAC4),
//                                           text2: "Light Intensity",
//                                           value2: "4 ",
//                                           txtclr2: Colors.white,
//                                           clr2: Color(0xff55CAC4),
//                                         )),
//                                     Expanded(
//                                         child: two_value_card(
//                                       text: "Brightness",
//                                       value: "4.88%",
//                                       txtclr: Colors.white,
//                                       clr: Color(0xff55CAC4),
//                                     )),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:tyamo/Views/Features/Deviceinfo/Battery%20Info/two_value_card.dart';
import 'package:tyamo/Views/Features/Deviceinfo/General%20Info/two_widget_card.dart';

class GeneralInfo extends StatelessWidget {
  const GeneralInfo({super.key});

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
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF50C9C2),
                Color(0xFF95DEDA),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  "General Info:",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w800),
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          two_value_card(
                            text: "Screen State",
                            value: "Unlocked",
                            txtclr: Color(0xff55CAC4),
                          ),
                          SizedBox(height: 10),
                          TwoWidgetCard(
                            text1: "System Volume",
                            value1: "0 / 7",
                            txtclr1: Color(0xff55CAC4),
                            text2: "Media Volume",
                            value2: "4 / 7",
                            txtclr2: Color(0xff55CAC4),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        children: [
                          TwoWidgetCard(
                            text1: "Light Activity",
                            value1: "Dim Light",
                            txtclr1: Color(0xff55CAC4),
                            text2: "Light Intensity",
                            value2: "4",
                            txtclr2: Color(0xff55CAC4),
                          ),
                          SizedBox(height: 10),
                          two_value_card(
                            text: "Brightness",
                            value: "4.88%",
                            txtclr: Color(0xff55CAC4),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  "Last Updated: 2 minutes ago",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My General Info:",
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              two_value_card(
                                text: "Screen State",
                                value: "Unlocked",
                                txtclr: Colors.white,
                                clr: Color(0xff55CAC4),
                              ),
                              SizedBox(height: 10),
                              TwoWidgetCard(
                                text1: "System Volume",
                                value1: "0 / 7",
                                txtclr1: Colors.white,
                                clr1: Color(0xff55CAC4),
                                text2: "Media Volume",
                                value2: "4 / 7",
                                txtclr2: Colors.white,
                                clr2: Color(0xff55CAC4),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            children: [
                              TwoWidgetCard(
                                text1: "Light Activity",
                                value1: "Dim Light",
                                txtclr1: Colors.white,
                                clr1: Color(0xff55CAC4),
                                text2: "Light Intensity",
                                value2: "4",
                                txtclr2: Colors.white,
                                clr2: Color(0xff55CAC4),
                              ),
                              SizedBox(height: 10),
                              two_value_card(
                                text: "Brightness",
                                value: "4.88%",
                                txtclr: Colors.white,
                                clr: Color(0xff55CAC4),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
