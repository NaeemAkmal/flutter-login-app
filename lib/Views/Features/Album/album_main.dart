import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tyamo/Views/Features/Album/friends_album.dart';
import 'package:tyamo/Views/Features/Album/my_album.dart';

class AlbumMain extends StatefulWidget {
  const AlbumMain({super.key});

  @override
  State<AlbumMain> createState() => _AlbumMainState();
}

class _AlbumMainState extends State<AlbumMain>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;
  late CurvedAnimation curve;
  List<IconData> iconsList = [
    Icons.person_outline,
    Icons.people_outline,
  ];

  int page = 0;

  int pageview = 0;

  PageController pageController = PageController(initialPage: 0);
  Widget pageViewSection() {
    return PageView(
      controller: pageController,
      onPageChanged: (value) {
        setState(() {
          page = value;
        });
      },
      children: const [
        MyAlbum(),
        FriendsAlbum(),
      ],
    );
  }

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    curve = CurvedAnimation(
      parent: animationController,
      curve: const Interval(0.5, 1, curve: Curves.fastOutSlowIn),
    );
    animation = Tween<double>(begin: 0, end: 1).animate(curve);
    animationController.forward();
    super.initState();
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
      floatingActionButton: ScaleTransition(
        scale: animation,
        child: FloatingActionButton(
          splashColor: const Color(0xffFFA400),
          elevation: 5,
          backgroundColor: const Color(0xFFF8880F),
          child: const Icon(
            Icons.add,
            color: Colors.black45,
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconsList,
        activeIndex: page,
        activeColor: Colors.green,
        splashColor: Colors.grey,
        inactiveColor: Colors.black,
        gapLocation: GapLocation.center,
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
