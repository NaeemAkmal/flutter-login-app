import 'dart:async';
import 'dart:io';

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:page_transition/page_transition.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:tyamo/Controller/User%20Controller/user_controller.dart';
import 'package:tyamo/Model/my_user.dart';
import 'package:tyamo/Views/Invitation/invite_friend.dart';
import 'package:tyamo/Views/Widgets/Auth/auth_textfield.dart';
import 'package:image/image.dart' as Im;
import 'package:uuid/uuid.dart';

class ProfileSetup extends StatefulWidget {
  const ProfileSetup({super.key});

  @override
  State<ProfileSetup> createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  bool ismale = true;
  File? file;
  bool isUploading = false;
  ImagePicker img = ImagePicker();
  String postId = const Uuid().v4();
  handlechoosefromgallery() async {
    var getImage = await img.pickImage(
      source: ImageSource.gallery,
      maxHeight: 1080,
      maxWidth: 1920,
    );
    File io = File(getImage!.path);
    setState(() {
      file = io;
    });
    if (file != null) {
      uploadToStorage();
    }
  }

  updateAvatarInfirestore({String? mediaUrl, String? uid}) async {
    print(mediaUrl);
    print(uid);
    await FirebaseFirestore.instance.collection("users").doc(uid).update({
      "avatarUrl": mediaUrl,
    });
  }

  uploadToStorage() async {
    setState(() {
      isUploading = true;
    });
    await compressImage();
    String? mediaUrl = await uploadImage();
    if (mediaUrl != null) {
      await updateAvatarInfirestore(mediaUrl: mediaUrl, uid: myUser!.uid);
    }
  }

  Future<String?> uploadImage() async {
    UploadTask uploadTask = FirebaseStorage.instance
        .ref()
        .child("postPictures/$postId.jpg")
        .putFile(file!);
    String? downloadUrl;
    return uploadTask.then((p0) => p0.ref.getDownloadURL());
  }

  compressImage() async {
    final tempDir = await getTemporaryDirectory();
    final path = tempDir.path;
    Im.Image? imageFile = Im.decodeImage(file!.readAsBytesSync());
    final compreseedImageFile = File("$path/image_$postId.jpg")
      ..writeAsBytesSync(Im.encodeJpg(imageFile!, quality: 90));
    setState(() {
      file = compreseedImageFile;
    });
  }

  UserController? _currentuser;
  MyUser? myUser;
  @override
  Widget build(BuildContext context) {
    _currentuser = Provider.of<UserController>(context, listen: false);
    setState(() {
      myUser = _currentuser!.getCurrentUser;
    });
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
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/profileb2.jpeg"),
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
          ),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(color: Color(0xff000221)),
              child: const Text(
                "Profile setup",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 30),
            CircularProfileAvatar(
              'https://www.google.com/imgres?q=flutter%20image%20jpg&imgurl=https%3A%2F%2Fw7.pngwing.com%2Fpngs%2F67%2F315%2Fpng-transparent-flutter-hd-logo-thumbnail.png&imgrefurl=https%3A%2F%2Fwww.pngwing.com%2Fen%2Fsearch%3Fq%3Dflutter&docid=whmQo-BL17hkSM&tbnid=eiX4wf9SN25L2M&vet=12ahUKEwilh96B5suOAxUA8rsIHcpjG9cQM3oECCQQAA..i&w=360&h=270&hcb=2&ved=2ahUKEwilh96B5suOAxUA8rsIHcpjG9cQM3oECCQQAA',

              onTap: () {
                handlechoosefromgallery();
              },
              backgroundColor: Colors.cyan,
              initialsText: const Text(
                '+',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: AuthTextfield(
                controller: TextEditingController(),
                icon: Icons.face,
                keyboardtype: TextInputType.text,
                labeltext: 'Your name',
                obsecuretext: false,
                sizeall: 16,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: AuthTextfield(
                controller: TextEditingController(),
                icon: Icons.alternate_email,
                keyboardtype: TextInputType.emailAddress,
                labeltext: 'Your username',
                obsecuretext: false,
                sizeall: 16,
              ),
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      ismale = true;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: ismale ? Colors.cyan : Colors.grey,
                      shape: BoxShape.circle,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(1.0, 9.0),
                        ),
                      ],
                    ),
                    child: const Icon(Icons.male, color: Colors.white),
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    ismale = false;
                  }),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: !ismale ? Colors.purpleAccent : Colors.grey,
                      shape: BoxShape.circle,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(1.0, 9.0),
                        ),
                      ],
                    ),
                    child: const Icon(Icons.female, color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 250,
              child: Hero(
                tag: "AUTH",
                child: RoundedLoadingButton(
                  borderRadius: 10,
                  controller: _btnController,
                  color: const Color(0xff00c1AA),
                  onPressed: () {
                    Timer(const Duration(seconds: 3), () {
                      _btnController.success();
                      Navigator.pushReplacement(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: const InviteFriend(),
                        ),
                      );
                    });
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                      fontSize: 15,
                      letterSpacing: 1,
                    ),
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
