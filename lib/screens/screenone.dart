import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_x/screens/homepage.dart';

class ScreenOne extends StatelessWidget {
  final String title;
  const ScreenOne({super.key, this.title = 'Default Title'});

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
         children: [
           Container(
             color: Colors.yellow,
             height: Get.height * 0.3,
             width: Get.width,
           ),
           Container(
             color: Colors.blue,
             height: Get.height * 0.3,
             width: width,
           ),
           Container(
             color: Colors.deepPurpleAccent,
             height: height * 0.3,
             width: width,
           )
         ],
        ),
      ),
    );
  }
}
