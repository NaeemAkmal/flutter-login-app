import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AcceptInvite extends StatelessWidget {
  const AcceptInvite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 55,
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                textAlign: TextAlign.center,
                "See your Invitation",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                elevation: 0,
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: SizedBox(
                  height: 80,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 60,
                              width: 60,
                              child: CircularProfileAvatar(
                                '',
                                backgroundColor: Colors.grey,
                                radius: 35,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5, bottom: 5),
                                child: Text(
                                  "@ALI3365",
                                  style: TextStyle(
                                      fontSize: 17.sp, color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5, bottom: 5),
                                child: Text(
                                  "ALI",
                                  style: TextStyle(
                                      fontSize: 17.sp, color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              GFButton(
                                onPressed: () {},
                                color: Colors.green,
                                shape: GFButtonShape.pills,
                                child: const Text("Accept"),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              GFButton(
                                onPressed: () {},
                                color: Colors.red,
                                shape: GFButtonShape.pills,
                                child: const Text("Decline"),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Container(
              height: 400,
              width: 400,
              alignment: Alignment.center,
              child: Image.asset("assets/images/acceptinvitation1.webp"),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your received invitations are currently  ",
                    style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "EMPTY",
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
