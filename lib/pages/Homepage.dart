import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monoapp/pages/LoginPage.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     Future.delayed(const Duration(seconds: 3), () {
      Get.to(LoginPage());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  "assets/logo.jpeg",
                  height: 80,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}