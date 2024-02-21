import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controler/color_controller.dart';

class GetxColorApp extends StatefulWidget {
  const GetxColorApp({super.key});

  @override
  State<GetxColorApp> createState() => _GetxColorAppState();
}

class _GetxColorAppState extends State<GetxColorApp> {
  ColorController colorController = Get.put(ColorController());

  @override
  Widget build(BuildContext context) {
    debugPrint('Build Call');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get-X Color App"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.07,
            ),
            Obx(() => Container(
                  height: Get.height * 0.3,
                  width: Get.width * 0.9,
                  color: Colors.deepPurpleAccent
                      .withOpacity(colorController.opacity.value),
                )),
            SizedBox(
              height: Get.height * 0.04,
            ),
            Obx(() => Slider(
                value: colorController.opacity.value,
                onChanged: (value) => colorController.changeOpacity(value)))
          ],
        ),
      ),
    );
  }
}
