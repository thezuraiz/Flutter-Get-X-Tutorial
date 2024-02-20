import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(CupertinoIcons.add),
        onPressed: () {
          Get.snackbar(
            "Name",
            "The Zuraiz",
            icon: const Icon(CupertinoIcons.news),
            onTap: (get) {
              debugPrint('Snack Bar Picked');
            },
          );
        },
      ),
    );
  }
}
