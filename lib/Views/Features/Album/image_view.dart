import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageView extends StatelessWidget {
  String url;

  ImageView({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PhotoView(
        heroAttributes: const PhotoViewHeroAttributes(
          tag: "assets/images/albumpost.jpg",
        ),
        imageProvider: const AssetImage("assets/images/albumpost.jpg"),
      ),
    );
  }
}
