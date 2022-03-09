import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: _height,
              width: _width,
              child: Image.asset(
                'assets/Rectangle 12.png',
                fit: BoxFit.fill,
              ),
            ),
            Center(
              child: Container(
                child: Image.asset(
                  'assets/Group 32.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
