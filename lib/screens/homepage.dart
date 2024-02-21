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
        title: const Text('Locales: Translation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('message'.tr,style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(
                height: 10,
              ),
              Text('name'.tr, style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () => Get.updateLocale(const Locale('en_US')),
                    child: const Text('English'),
                  ),
                  ElevatedButton(
                      onPressed: () => Get.updateLocale(const Locale('ur_PK')),
                      child: const Text('Urdu'),
                  ),
                  ElevatedButton(onPressed: () => Get.updateLocale(const Locale('fr_FN')),
                      child: const Text('French'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
