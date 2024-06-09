import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class PicturePage extends StatefulWidget {
  const PicturePage({super.key, required this.picture});

  final XFile picture;

  @override
  State<PicturePage> createState() => _PicturePageState();
}

class _PicturePageState extends State<PicturePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.picture.path),
        Container(
          height: MediaQuery.sizeOf(context).height * .5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            image: DecorationImage(
              image: FileImage(File(widget.picture.path)),
            ),
          ),
        ),
      ],
    );
  }
}
