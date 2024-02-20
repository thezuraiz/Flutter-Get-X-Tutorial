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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: ListTile(
            title: const Text("Get X Dialogy Box"),
            subtitle: const Text("Dialogy ALert With Get X"),
            onTap: () {
              Get.defaultDialog(
                title: "Delete Chat",
                middleText: "Are You Sure to Delete this?",
                // By Default Content Should not more then 3 lines!
                // To craete more then 3 line:
                // content: Column(
                //   children: [
                //     Text("Content Line 1"),
                //     Text("Content Line 2"),
                //     Text("Content Line 3"),
                //     Text("Content Line 4"),
                //     Text("Content Line 5"),
                //     Text("Content Line 6"),
                //   ],
                // ),
                contentPadding: const EdgeInsets.all(20),
                titlePadding: const EdgeInsets.only(top: 20),

                // textCancel: "Cancel",
                // textConfirm: "Yes",

                // For custom buttons
                confirm: TextButton(child: const Text("Confirm"),onPressed: (){},),
                cancel: TextButton(onPressed: (){}, child: const Text("Negative"))

              );
            },
          ),
        ),
      ),
    );
  }
}
