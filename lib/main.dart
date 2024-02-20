import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/screens/homepage.dart';
import 'package:get_x/screens/screenone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Get-X Learning',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          primaryColor: Colors.blue.shade700,
          useMaterial3: true,
        ),
        home: const HomePage(),
        initialRoute: '/',
        defaultTransition: Transition.cupertino,
        getPages: [
          GetPage(
              name: '/home',
              page: () => const HomePage(),
              transition: Transition.fadeIn),
          GetPage(
              name: '/screen-one',
              page: () => const ScreenOne(),
              transition: Transition.cupertinoDialog),
          GetPage(
              name: '/second-screen',
              page: () => ScreenOne(),
              arguments: {'title': 'Title by passing Routes'}),
        ]);
  }
}


// Get.to(OneScreen())
// Get.toNamed(‘/route-name’)
// Get.off(() => NextScreen())
// Get.offAll(()=> NextScreen())
// Get.back()