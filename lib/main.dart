import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/languages.dart';
import 'package:get_x/screens/counterapp.dart';
import 'package:get_x/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      translations: Languages(),
      locale: const Locale('en_US'),
      fallbackLocale: const Locale('fr_FN'), //If no languages is selected in OS
      home: const GetxCounterApp(),
    );
  }
}
