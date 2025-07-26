// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tyamo/Views/Invitation/accept_invite.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class InviteFriend extends StatelessWidget {
  const InviteFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          title: SizedBox(
            height: 40,
            width: 35,
            child: Image.asset(
              'assets/images/logos.jpg',
              filterQuality: FilterQuality.high,
            ),
          ),
          leading: null,
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: AcceptInvite()));
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Icon(
                  Icons.person_outline,
                  size: 35.sp,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 55,
              decoration: const BoxDecoration(
                color: Color.fromARGB(187, 0, 150, 135),
              ),
              child: Text(
                textAlign: TextAlign.center,
                "Find your friend",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 3,
                              // ignore: deprecated_member_use
                              color: Colors.grey.withOpacity(0.3),
                            )
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 20,
                          ),
                          hintText: "Hi Ali,Type an exact username",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            // ignore: deprecated_member_use
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 10,
                            spreadRadius: 3,
                          )
                        ]),
                    child: Icon(
                      Icons.search,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Container(
            //   width: double.infinity,
            //   padding: const EdgeInsets.symmetric(horizontal: 20),
            //   child: Card(
            //     elevation: 0,
            //     color: Colors.white,
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.all(
            //         Radius.circular(20),
            //       ),
            //     ),
            //     child: SizedBox(
            //       height: 100,
            //       child: Column(
            //         children: [
            //           Row(
            //             children: [
            //               Padding(
            //                 padding: const EdgeInsets.all(8.0),
            //                 child: SizedBox(
            //                   height: 60,
            //                   width: 60,
            //                   child: CircularProfileAvatar(
            //                     '',
            //                     backgroundColor: Colors.grey,
            //                     radius: 35,
            //                   ),
            //                 ),
            //               ),
            //               Column(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: const [
            //                   Padding(
            //                     padding: EdgeInsets.only(top: 5, bottom: 5),
            //                     child: Text(
            //                       "@Furqan3365",
            //                       style: TextStyle(
            //                           fontSize: 17, color: Colors.black),
            //                     ),
            //                   ),
            //                   Padding(
            //                     padding: EdgeInsets.only(top: 5, bottom: 5),
            //                     child: Text(
            //                       "Furqan",
            //                       style:
            //                           TextStyle(fontSize: 17, color: Colors.grey),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //               Spacer(),
            //               Row(
            //                 children: [
            //                   GFButton(
            //                     onPressed: () {},
            //                     color: Colors.green,
            //                     shape: GFButtonShape.pills,
            //                     child: Text("Accept"),
            //                   ),
            //                   GFButton(
            //                     onPressed: () {},
            //                     color: Colors.red,
            //                     shape: GFButtonShape.pills,
            //                     child: Text("Decline"),
            //                   ),
            //                 ],
            //               ),
            //             ],
            //           )
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset("assets/images/invitef2.jpg"),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Search for your friend on Tyamo or invite \nyour friend to Tyamo",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w900, color: Colors.grey),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(
                  Color.fromARGB(187, 0, 150, 135),
                ),
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Invite a Friend",
                  style: TextStyle(color: Colors.white, fontSize: 16.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
