import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tyamo/Views/Profile/profile_settings_.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool more = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            "My Profile",
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/profiledoodle.jpg"),
                  fit: BoxFit.fill),
            ),
            child: CircularProfileAvatar(
              '',
              backgroundColor: Colors.cyan,
              borderColor: Colors.purple,
              cacheImage: true,
              elevation: 20,
              radius: 80,
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
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Naeem Akmal",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "@naeem15",
            style: TextStyle(
                fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ButtonStyle(
                side: WidgetStateProperty.all<BorderSide>(
                    const BorderSide(color: Colors.purpleAccent)),
                backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ))),
            onPressed: () {},
            child: GestureDetector(
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Edit Profile Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const ProfileSettings()));
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                CardDetailRow(
                    clr: Colors.grey.shade200,
                    icon: const Icon(Icons.alternate_email),
                    type: "Email",
                    val: "naeemakmaltts@gmail.com"),
                CardDetailRow(
                    clr: Colors.grey.shade200,
                    icon: const Icon(Icons.flag),
                    type: "Country",
                    val: "Pakistan"),
                CardDetailRow(
                    clr: Colors.grey.shade200,
                    icon: const Icon(Icons.phone),
                    type: "Phone Number",
                    val: "Not Currently Set"),
                more
                    ? CardDetailRow(
                        clr: Colors.grey.shade200,
                        icon: const Icon(FontAwesomeIcons.venusMars),
                        type: "Male",
                        val: "Gender")
                    : Container(),
                more
                    ? CardDetailRow(
                        clr: Colors.grey.shade200,
                        icon: const Icon(Icons.person),
                        type: "Partner",
                        val: "Furqan Shahid")
                    : Container(),
                more
                    ? CardDetailRow(
                        clr: Colors.grey.shade200,
                        icon: const Icon(Icons.fingerprint),
                        type: "CNIC",
                        val: "3330333122145")
                    : Container(),
                more
                    ? CardDetailRow(
                        clr: Colors.grey.shade200,
                        icon: const Icon(Icons.schedule),
                        type: "Account Created",
                        val: "24-3-2025")
                    : Container(),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ButtonStyle(
                side: WidgetStateProperty.all<BorderSide>(
                    const BorderSide(color: Colors.grey)),
                backgroundColor: WidgetStateProperty.all<Color>(Colors.grey),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ))),
            onPressed: () {
              setState(() {
                more = !more;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                more ? "- Show less" : "+ Show more",
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.redAccent,
                    Colors.red,
                  ]),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Subscribed to",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Text(
                      "Premium",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Subscribed on",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Text(
                      "N/A",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class CardDetailRow extends StatelessWidget {
  final String type;

  final Icon icon;
  final String val;
  final Color clr;
  const CardDetailRow(
      {super.key,
      required this.clr,
      required this.icon,
      required this.type,
      required this.val});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: clr,
          borderRadius: const BorderRadius.all(Radius.circular(
            20,
          )),
        ),
        height: 50,
        width: double.infinity,
        child: Row(
          children: <Widget>[
            const SizedBox(
              width: 10,
            ),
            icon,
            const SizedBox(
              width: 10,
            ),
            Text(
              type,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    val,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 16,
                        color: val == "Not Currently Set"
                            ? Colors.red
                            : Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
