// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:tyamo/Views/Features/Deviceinfo/Battery%20Info/two_value_card.dart';
import 'package:tyamo/Views/Features/Deviceinfo/User%20Info/onevaluecard.dart';

// ignore: must_be_immutable
class UserStatus extends StatefulWidget {
  @override
  State<UserStatus> createState() => _UserStatusState();
}

class _UserStatusState extends State<UserStatus> {
  List<String> status = [
    "Away",
    "Do Not Disturb",
    "Driving",
    "Eating",
  ];

  List<String> status2 = [
    "Meeting",
    "Outdoors",
    "Sleeping",
    "Working",
  ];

  String selectedStatus = "Away";

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
            Color(0xFF86AAE9),
            Color(0xFF92E9E3),
          ],
        )),
        child: Column(
          children: [
            Expanded(
                child: Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Friend's Status:",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w900),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: two_value_card(
                                      text: "User is",
                                      value: "Online",
                                      txtclr: Colors.cyan.shade500,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    child: two_value_card(
                                      text: "Last App Action",
                                      value: "2 minutes ago",
                                      txtclr: Colors.cyan.shade500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: two_value_card(
                                text: "User Status",
                                value: "Driving",
                                txtclr: Colors.cyan.shade500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )),
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
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "My Status : ",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w900),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            " Eating",
                            style: TextStyle(
                                color: Colors.cyan.shade500,
                                fontSize: 18,
                                fontWeight: FontWeight.w900),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      child: ListView.builder(
                    itemCount: status.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedStatus = status[index];
                                });
                              },
                              child: onevaluecard(
                                value: status[index],
                                clr: selectedStatus == status[index]
                                    ? Colors.blue
                                    : const Color(0xFF84abe4),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedStatus = status2[index];
                                });
                              },
                              child: onevaluecard(
                                value: status2[index],
                                clr: selectedStatus == status2[index]
                                    ? Colors.blue
                                    : const Color(0xFF84abe4),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ))
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

// class onevaluecard extends StatelessWidget {
//   const onevaluecard({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 160,
//       width: 160,
//       child: Card(
//         color: Colors.blue,
//         elevation: 10,
//         child: Center(
//           child: Column(
//             children: [
//               Expanded(
//                   child: Align(
//                 alignment: Alignment.center,
//                 child: Text(
//                   "Away",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 15,
//                       fontWeight: FontWeight.w900),
//                   textAlign: TextAlign.center,
//                 ),
//               )),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
