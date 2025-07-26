import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:tyamo/Views/Widgets/Homepage/dashboard/dashboard_gradient_feature.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Container(
            alignment: Alignment.center,
            child: const Text(
              "Dashboard",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 22,
                color: Colors.black,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Your Friend",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 19,
                color: Colors.purple,
                letterSpacing: 1,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            width: double.infinity,
            child: Card(
              elevation: 10,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 25),
                            child: CircularProfileAvatar(
                              '',
                              backgroundColor: Colors.cyan,
                              borderColor: Colors.purple,
                              cacheImage: true,
                              elevation: 20,
                              radius: 45,
                              borderWidth: 1,
                              errorWidget: (context, url, error) {
                                return const Icon(
                                  Icons.face,
                                  size: 20,
                                );
                              },
                              onTap: () {},
                              animateFromOldImageOnUrlChange: true,
                              placeHolder: (context, url) {
                                return Container(
                                  child: const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.fiber_manual_record,
                                      color: Colors.grey,
                                      size: 18,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      ' Naeem Akmal ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.lightBlue,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Township Sector A-1 Lahore,\n 54770, Wahga, 53600.",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black54,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Flexible(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Status',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  'Offline',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.redAccent),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 3,
                          child: Container(
                            color: Colors.deepPurple,
                          ),
                        ),
                        const Flexible(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              children: [
                                Text(
                                  'User Status',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  'N/A',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.redAccent),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 3,
                          child: Container(
                            color: Colors.deepPurple,
                          ),
                        ),
                        const Flexible(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Text(
                              'Mood N/A',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            children: [
              Flexible(
                  child: DashboardGradientFeature(
                btntext: "Device info",
                iconimg: "assets/images/dashboarddevice.png",
                clr: [
                  Colors.greenAccent,
                  Colors.green,
                ],
              )), //extract method
              Flexible(
                  child: DashboardGradientFeature(
                      btntext: "Gallery",
                      iconimg: "assets/images/dashboardgallery.png",
                      clr: [
                    Colors.yellowAccent,
                    Colors.yellow,
                  ])), //extract method
              Flexible(
                  child: DashboardGradientFeature(
                      btntext: "Mood",
                      iconimg: "assets/images/dashboardmood.png",
                      clr: [
                    Colors.purpleAccent,
                    Colors.purple,
                  ])),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Our Features",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.blue,
                    fontSize: 20,
                    letterSpacing: 1),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Flexible(
                    child: DashboardGradientFeature(
                        btntext: "Playlist",
                        weight: FontWeight.w900,
                        iconimg: "assets/images/dashboardplaylist.png",
                        clr: [
                      Colors.white,
                      Colors.white,
                    ])),
                //extract
                SizedBox(
                  width: 10,
                ),
                Flexible(
                    child: DashboardGradientFeature(
                        btntext: "Location",
                        iconimg: "assets/images/dashboardlocation.png",
                        weight: FontWeight.w900,
                        clr: [
                      Colors.white,
                      Colors.white,
                    ])), //extract
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Flexible(
                    child: DashboardGradientFeature(
                        btntext: "To-do-List",
                        weight: FontWeight.w900,
                        iconimg: "assets/images/dashboardtodolist.png",
                        clr: [
                      Colors.white,
                      Colors.white,
                    ])),
                //extract
                SizedBox(
                  width: 10,
                ),
                Flexible(
                    child: DashboardGradientFeature(
                        btntext: "Diary",
                        iconimg: "assets/images/dashboarddiary.png",
                        weight: FontWeight.w900,
                        clr: [
                      Colors.white,
                      Colors.white,
                    ])), //extract
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Flexible(
                    child: DashboardGradientFeature(
                        btntext: "Surprise Notes",
                        weight: FontWeight.w900,
                        iconimg: "assets/images/dashboardsurprise.png",
                        clr: [
                      Colors.white,
                      Colors.white,
                    ])),
                //extract
                SizedBox(
                  width: 10,
                ),
                Flexible(
                    child: DashboardGradientFeature(
                        btntext: "Horoscopes",
                        iconimg: "assets/images/dashboardhoroscope.png",
                        weight: FontWeight.w900,
                        clr: [
                      Colors.white,
                      Colors.white,
                    ])), //extract
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Flexible(
                    child: DashboardGradientFeature(
                        btntext: "Emergency",
                        weight: FontWeight.w900,
                        iconimg: "assets/images/dashboardos.png",
                        clr: [
                      Colors.white,
                      Colors.white,
                    ])),
                //extract
                SizedBox(
                  width: 10,
                ),
                Flexible(
                    child: DashboardGradientFeature(
                        btntext: "Activity",
                        iconimg: "assets/images/dashboardpersons.png",
                        weight: FontWeight.w900,
                        clr: [
                      Colors.white,
                      Colors.white,
                    ])), //extract
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
