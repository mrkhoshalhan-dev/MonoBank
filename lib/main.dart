import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monoapp/pages/Homepage.dart';

void main() {
  runApp(const RunApp());
}

class RunApp extends StatefulWidget {
  const RunApp({super.key});

  @override
  State<RunApp> createState() => _RunAppState();
}

class _RunAppState extends State<RunApp> {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
