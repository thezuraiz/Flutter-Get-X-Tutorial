import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controler/counter_controller.dart';

class GetxCounterApp extends StatefulWidget {
  const GetxCounterApp({super.key});

  @override
  State<GetxCounterApp> createState() => _GetxCounterAppState();
}

class _GetxCounterAppState extends State<GetxCounterApp> {

  CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    debugPrint('ReBuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App With Get-X'),
      ),
      body: Center(
        child: Obx(() => Text(controller.x.toString() ,style: const TextStyle(fontSize: 28))),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => controller.increment(),
      ),
    );
  }
}
