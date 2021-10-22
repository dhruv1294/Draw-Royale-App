import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () => Get.toNamed("/home"));
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Text(
            "Draw Royale",
            style: Theme.of(context).textTheme.headline4?.copyWith(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      );
}
