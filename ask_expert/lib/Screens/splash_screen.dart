import 'package:ask_expert/Routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({final Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double opacity = 0;

  @override
  void initState() {
    super.initState();
    Future<double>.delayed(const Duration(milliseconds: 500), () => opacity = 1);
    Future<dynamic>.delayed(
      const Duration(milliseconds: 3000),
      () => Get.toNamed(AppRoutes.homeScreen),
    );
  }

  @override
  Widget build(final BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            SizedBox(
              height: _height,
              width: _width,
              child: Image.asset(
                'assets/Splash_Back.png',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: AnimatedOpacity(
                duration: const Duration(seconds: 1),
                opacity: opacity,
                child: Image.asset(
                  'assets/Splash_Center.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
