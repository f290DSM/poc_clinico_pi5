import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'picture_page.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  List<CameraDescription>? cameras;
  List<Widget>? cameraButtons;
  CameraController? cameraController;
  CameraDescription? activeCamera;
  CameraPreview? cameraPreview;

  Future<List<Widget>?> listCameras() async {
    List<Widget> buttons = [];
    cameras = await availableCameras();
    if (cameras == null) return null;
    activeCamera ??= cameras?.first;

    if (cameras!.isNotEmpty) {
      for (final camera in cameras!) {
        buttons.add(
          ElevatedButton(
            onPressed: () {
              setState(() {
                activeCamera = camera;
              });
            },
            child: Row(
              children: [
                const Icon(Icons.camera_alt),
                Text(camera.name),
              ],
            ),
          ),
        );
      }
      return buttons;
    } else {
      return [];
    }
  }

  Future<void> setCameraController() async {
    if (activeCamera == null) return;
    cameraController = CameraController(activeCamera!, ResolutionPreset.high);
    await cameraController!.initialize();
    setState(() {
      cameraPreview = CameraPreview(cameraController!);
    });
  }

  Future<void> takePicture() async {
    if (!cameraController!.value.isInitialized) return;
    if (cameraController!.value.isTakingPicture) return;
    try {
      var picture = await cameraController!.takePicture();
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PicturePage(picture: picture)));
    } catch (e) {
      log('Falha ao capturar fotografia. Error: $e', time: DateTime.now());
    }
  }

  @override
  void initState() {
    listCameras().then((value) {
      setState(() {
        cameraButtons = value;
        setCameraController();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    if (cameraController != null) {
      cameraController!.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await takePicture();
          },
          child: Text('Yake a Picture'),
        ),
      ),
    );
  }
}
