
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_balloon_slider/flutter_balloon_slider.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'dart:ui' as prefix0;

import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:list_tile_more_customizable/list_tile_more_customizable.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tyamo/Views/Features/Album/image_view.dart';

class AlbumPost extends StatelessWidget {
  const AlbumPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  ),
                  child: Container(
                    height: 500,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/albumpost.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: BackdropFilter(
                      filter: prefix0.ImageFilter.blur(sigmaX: 7, sigmaY: 14),
                      child: Container(
                        color: Colors.black.withOpacity(0.7),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.all(20),
                                    child: Icon(
                                      Icons.arrow_back,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 60,
                                  width: 60,
                                  child: Image.asset("assets/images/logo.jpg"),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: GFAvatar(
                                    backgroundColor: Colors.blue,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: GestureDetector(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Hero(
                                    tag: "assets/images/albumpost.jpg",
                                    child: Image.asset(
                                      "assets/images/albumpost.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          type: PageTransitionType.fade,
                                          child: ImageView(
                                            url: "assets/images/albumpost.jpg",
                                          )));
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: SizedBox(
                                height: 60,
                                width: 250,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    BalloonSlider(
                                      value: 1,
                                      onChanged: (value) {},
                                      onChangeEnd: (value) {},
                                      showRope: false,
                                      onChangeStart: (value) {},
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Caption: ",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.cyan),
                          ),
                          GestureDetector(
                            child: const Icon(
                              Icons.edit,
                              color: Colors.cyan,
                            ),
                            onTap: () {
                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.noHeader,
                                animType: AnimType.scale,
                                body: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelText: "Edit new Caption",
                                        labelStyle: const TextStyle(
                                          color: Colors.black,
                                        ),
                                        fillColor: Colors.black,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.green),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.black),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.deepPurple),
                                        ),
                                      ),
                                      keyboardType: TextInputType.multiline,
                                      maxLines: null,
                                      minLines: 1,
                                    ),
                                  ),
                                ),
                                dismissOnBackKeyPress: true,
                                isDense: false,
                                btnOkText: "Confirm Caption",
                                btnOkOnPress: () {},
                              ).show();
                            },
                          ),
                        ],
                      ),
                      FocusedMenuHolder(
                        menuWidth: MediaQuery.of(context).size.width * 0.50,
                        blurSize: 2.0,
                        menuItemExtent: 45,
                        menuBoxDecoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0))),
                        duration: const Duration(milliseconds: 100),
                        animateMenuItems: true,
                        blurBackgroundColor: Colors.black54,
                        openWithTap: true,
                        // openWithTap:
                        //     true, // Open Focused-Menu on Tap rather than Long Press
                        menuOffset:
                            10.0, // Offset value to show menuItem from the selected item
                        bottomOffsetHeight:
                            80.0, // Offset height to consider, for showing the menu item ( for example bottom navigation bar), so that the popup menu will be shown on top of selected item.
                        menuItems: <FocusedMenuItem>[
                          // Add Each FocusedMenuItem  for Menu Options
                          FocusedMenuItem(
                            title: const Text(
                              "Copy",
                              style: TextStyle(color: Colors.black),
                            ),
                            trailingIcon: const Icon(Icons.copy),
                            onPressed: () {},
                          ),
                          FocusedMenuItem(
                            title: const Text(
                              "Edit",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            backgroundColor: Colors.red,
                            trailingIcon: const Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.noHeader,
                                animType: AnimType.scale,
                                body: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelText: "Edit new Caption",
                                        labelStyle: const TextStyle(
                                          color: Colors.black,
                                        ),
                                        fillColor: Colors.black,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.green),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.black),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.deepPurple),
                                        ),
                                      ),
                                      keyboardType: TextInputType.multiline,
                                      maxLines: null,
                                      minLines: 1,
                                    ),
                                  ),
                                ),
                                dismissOnBackKeyPress: true,
                                isDense: false,
                                btnOkText: "Confirm Caption",
                                btnOkOnPress: () {},
                              ).show();
                            },
                          ),
                        ],
                        child: const ExpandableText(
                          "hi how are u",
                          expandText: "show more",
                          collapseText: "show less",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(222, 0, 0, 0),
                            fontWeight: FontWeight.w400,
                          ),
                          maxLines: 2,
                          linkColor: Colors.orange,
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "comments",
                        style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w900,
                            color: Colors.purple),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return FocusedMenuHolder(
                            onPressed: () {},
                            menuWidth: MediaQuery.of(context).size.width * 0.50,
                            blurSize: 2.0,
                            menuItemExtent: 45,
                            menuBoxDecoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            duration: const Duration(milliseconds: 100),
                            animateMenuItems: true,
                            blurBackgroundColor: Colors.black54,
                            openWithTap: true,
                            // openWithTap:
                            //     true, // Open Focused-Menu on Tap rather than Long Press
                            menuOffset:
                                10.0, // Offset value to show menuItem from the selected item
                            bottomOffsetHeight:
                                80.0, // Offset height to consider, for showing the menu item ( for example bottom navigation bar), so that the popup menu will be shown on top of selected item.
                            menuItems: <FocusedMenuItem>[
                              // Add Each FocusedMenuItem  for Menu Options
                              FocusedMenuItem(
                                title: const Text(
                                  "Copy",
                                  style: TextStyle(color: Colors.black),
                                ),
                                trailingIcon: const Icon(Icons.copy),
                                onPressed: () {},
                              ),
                              FocusedMenuItem(
                                title: const Text(
                                  "delete",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                backgroundColor: Colors.red,
                                trailingIcon: const Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ],
                            child: const ListTileMoreCustomizable(
                              title: Text(
                                "@Naeem15",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.cyan),
                              ),
                              leading: GFAvatar(
                                backgroundColor: Colors.blue,
                                size: 25,
                              ),
                              horizontalTitleGap: 0.0,
                              minVerticalPadding: 10,
                              minLeadingWidth: 60,
                              contentPadding: EdgeInsets.all(0),
                              isThreeLine: false,
                              subtitle: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "This is a comment",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      color: Color.fromARGB(222, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              trailing: Text(
                                "1 min ago",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              onTap: null,
                              onLongPress: null,
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      controller: null,
                      focusNode: null,
                      keyboardType: TextInputType.multiline,
                      textCapitalization: TextCapitalization.sentences,
                      maxLines: 3,
                      minLines: 1,
                      style: const TextStyle(color: Colors.white),
                      onChanged: (val) {},
                      decoration: const InputDecoration(
                        hintText: "Start a conversation",
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(60),
                          ),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.all(20),
                        filled: true,
                        fillColor: Colors.orange,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
