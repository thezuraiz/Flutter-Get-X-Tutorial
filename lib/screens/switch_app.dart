import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_x/controler/switch_controller.dart';

class SwitchApp extends StatefulWidget {
  const SwitchApp({super.key});

  @override
  State<SwitchApp> createState() => _SwitchAppState();
}

class _SwitchAppState extends State<SwitchApp> {

  SwitchController controller = Get.put(SwitchController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch App with GetX"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
              const Text("Switch App:"),
              Obx(() => Switch(value: controller.notification.value, onChanged: (value) => controller.notificationSwitch(value))),
          ],
        ),
      ),
    );
  }
}
