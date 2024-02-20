import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_x/screens/homepage.dart';

class ScreenOne extends StatelessWidget {
  final String title;
  const ScreenOne({super.key, this.title = 'Default Title'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
                onPressed: () => Get.to(() => HomePage()),
                child: Text('Go To Home')),
            TextButton(onPressed: () => Get.back(), child: Text('Go Back')),
          ],
        ),
      ),
    );
  }
}
