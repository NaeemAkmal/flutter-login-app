import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';
import 'package:tyamo/Views/Widgets/Profile/profile_setting_heading.dart';
import 'package:tyamo/Views/Widgets/Profile/profile_setting_sub.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                height: 280,
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadiusDirectional.vertical(
                      bottom: Radius.elliptical(
                          MediaQuery.of(context).size.width, 130),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const Row(
                      children: [
                        Icon(Icons.settings),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Settings",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 23,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Container(
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 20,
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  const Padding(
                                      padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                  )),
                                  CircularProfileAvatar(
                                    '',
                                    backgroundColor: Colors.cyan,
                                    borderColor: Colors.purple,
                                    cacheImage: true,
                                    elevation: 5,
                                    radius: 30,
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
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text(
                                    "Naeem Akmal",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 5,
                              color: Colors.grey.shade300,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            // Container(
                            //   padding: EdgeInsets.symmetric(horizontal: 50),
                            //   alignment: Alignment.centerLeft,
                            //   child: Text(
                            //     "Profile Setting",
                            //     textAlign: TextAlign.left,
                            //     style: TextStyle(
                            //       color: Colors.deepPurple,
                            //       fontSize: 16,
                            //       fontWeight: FontWeight.w900,
                            //     ),
                            //   ),
                            // ),
                            const ProfileSettingHeading(
                              headingtext: "Profile Setting",
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            // ),
                            // Container(
                            //   padding: EdgeInsets.symmetric(
                            //       horizontal: 20, vertical: 25),
                            //   color: Colors.transparent,
                            //   width: double.infinity,
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //     children: [
                            //       Container(
                            //         child: Text(
                            //           "Edit Name",
                            //           textAlign: TextAlign.left,
                            //           style: TextStyle(
                            //               fontSize: 16,
                            //               color: Colors.black,
                            //               fontWeight: FontWeight.w500),
                            //         ),
                            //       ),
                            //       Icon(
                            //         FontAwesomeIcons.arrowRight,
                            //         size: 15,
                            //       ),
                            //     ],
                            //   ),
                            const ProfileSettingSub(
                              title: "Edit Name",
                            ),
                            const ProfileSettingSub(
                              title: "Edit Phone Number",
                            ),
                            const ProfileSettingSub(
                              title: "Change Password",
                            ),
                            const ProfileSettingSub(
                              title: "Email Status",
                              secondaryWidget: Row(
                                children: [
                                  Text(
                                    "Not Verified",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const ProfileSettingHeading(
                              headingtext: "Notifictaion Settings",
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            ProfileSettingSub(
                              title: "Push Notificataions",
                              secondaryWidget: GFToggle(
                                  onChanged: (val) {},
                                  enabledTrackColor: Colors.greenAccent,
                                  type: GFToggleType.android,
                                  value: true),
                            ), //pubsec yaml get widget toggle widget
                            const SizedBox(
                              height: 20,
                            ),
                            const ProfileSettingHeading(
                              headingtext: "Application Setting",
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const ProfileSettingSub(
                              title: "Background Updates",
                              secondaryWidget: Row(
                                children: [
                                  Text(
                                    "Not Allowed",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 120,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
