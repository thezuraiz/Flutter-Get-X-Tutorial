import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controler/camera_controllor.dart';

class CameraApp extends StatefulWidget {
  const CameraApp({super.key});

  @override
  State<CameraApp> createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  CameraControllor camControllor = Get.put(CameraControllor());

  @override
  Widget build(BuildContext context) {
    debugPrint('Build');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Camera App With Get-X',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => CircleAvatar(
                radius: 120,
                backgroundImage: camControllor.photoPath.value.isNotEmpty
                    ? FileImage(File(camControllor.photoPath.value.toString()))
                    : null)),
            SizedBox(
              height: Get.height * 0.05,
            ),
            OutlinedButton(
                onPressed: () => camControllor.selectImage(),
                child: const Text('Select Image')),
            SizedBox(
              height: Get.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
