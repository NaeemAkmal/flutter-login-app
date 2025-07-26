import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/components/drawer/gf_drawer.dart';
import 'package:tyamo/Views/HomePage/dashboard.dart';
import 'package:tyamo/Views/Profile/profile.dart';
import 'package:tyamo/Views/Widgets/Homepage/drawer_list_tile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // final GlobalKey<ScaffoldState> _homepagekey = GlobalKey();
  List<IconData> iconsList = [
    FontAwesomeIcons.circleUser,
    FontAwesomeIcons.house,
    FontAwesomeIcons.bell,
  ];
  int page = 1;
  int pageView = 1;
  PageController pageController = PageController(initialPage: 1);
  Widget pageViewSection() {
    return PageView(
      controller: pageController,
      onPageChanged: (value) {
        setState(() {
          page = value;
        });
      },
      children: [
        const Profile(),
        const Dashboard(),
        Container(
          color: Colors.redAccent,
        ),
        const Dashboard(),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.cyan,
        ),
      ],
    );
  }

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
        // backgroundColor: Colors.white,
        // leading: GestureDetector(
        //   onTap: () {
        //     _homepagekey.currentState!.openDrawer();
        //   },
        //   child: const Icon(
        //     Icons.menu,
        //     color: Colors.black,
        //   ),
        // ),
        actions: [
          Container(
            width: 60,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Image.asset("assets/images/homepage3.png",
                filterQuality: FilterQuality.high),
          ),
        ],
      ),
      drawer: GFDrawer(
        child: Column(
          children: [
            Expanded(
                flex: 0,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 25),
                          child: CircularProfileAvatar(
                            '',
                            backgroundColor: Colors.cyan,
                            borderColor: Colors.purple,
                            cacheImage: true,
                            elevation: 20,
                            radius: 40,
                            borderWidth: 1,
                            errorWidget: (context, url, error) {
                              return const Icon(
                                Icons.face,
                                size: 20,
                              );
                            },
                            onTap: () {
                              pageController.animateToPage(0,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.linear);
                              Navigator.of(context).pop();
                            },
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
                        const Flexible(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Naeem Akmal ',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                            Text(
                              'naeemtts@gmail.com ',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ))
                      ],
                    ),
                  ],
                )),
            Expanded(
              flex: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: const BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: const Text(
                        "Premium",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 0,
              child: Divider(),
            ),
            const Column(
              children: [
                // GestureDetector(
                //   onTap: () {},
                //   child: ListTile(
                //     title: Container(
                //       alignment: Alignment.center,
                //       height: 50,
                //       child: Row(
                //         children: [
                //           Padding(
                //             padding: const EdgeInsets.symmetric(horizontal: 10),
                //             child: Icon(
                //               FontAwesomeIcons.creditCard,
                //               color: Colors.cyan,
                //             ),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.symmetric(horizontal: 10),
                //             child: Text(
                //               "Subscriptions",
                //               style: TextStyle(
                //                 fontSize: 14,
                //                 letterSpacing: 1,
                //                 fontWeight: FontWeight.w700,
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                DrawerListTile(
                  iconname: FontAwesomeIcons.creditCard,
                  tiletitle: "Subscriptions",
                ),
                DrawerListTile(
                  tiletitle: "Setting",
                  iconname: Icons.settings,
                ),
                DrawerListTile(
                  tiletitle: "Help",
                  iconname: FontAwesomeIcons.circleQuestion,
                ),
                DrawerListTile(
                  tiletitle: "Feedback",
                  iconname: FontAwesomeIcons.message,
                ),
                DrawerListTile(
                  tiletitle: "Tell Others",
                  iconname: FontAwesomeIcons.share,
                ),
                DrawerListTile(
                  tiletitle: "Rate the app",
                  iconname: FontAwesomeIcons.starHalfStroke,
                ),
              ],
            ),
            const Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(),
                  DrawerListTile(
                    tiletitle: "Sign Out",
                    iconname: FontAwesomeIcons.rightFromBracket,
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconsList,
        activeIndex: page,
        activeColor: Colors.green,
        splashColor: Colors.grey,
        inactiveColor: Colors.black,
        gapLocation: GapLocation.none,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        splashSpeedInMilliseconds: 300,
        onTap: (p0) {
          setState(() {
            page = p0;
            pageController.animateToPage(p0,
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear);
          });
        },
      ),
      body: pageViewSection(),
    );
  }
}
