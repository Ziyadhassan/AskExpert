import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:ask_expert/Logic/Controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({final Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(final BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width,
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(22)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    offset: Offset(2, 4),
                    color: Color.fromRGBO(42, 29, 118, .20),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset('assets/Search Icon.png'),
                ),
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          height: 84,
          width: 84,
          decoration: const BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.white,
                blurRadius: 20,
                spreadRadius: 5,
                offset: Offset(0, -4),
              ),
            ],
          ),
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color.fromRGBO(58, 33, 209, 1),
            child: Image.asset("assets/FAB.png"),
          ),
        ),
        bottomNavigationBar: Container(
          height: 64,
          decoration: const BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Color.fromRGBO(42, 29, 118, 0.25),
                blurRadius: 8,
                offset: Offset(0, -4),
              ),
            ],
          ),
          child: Obx(
            () => AnimatedBottomNavigationBar(
              icons: const <IconData>[
                Icons.payment,
                Icons.home,
                Icons.person,
                Icons.settings,
              ],
              activeIndex: controller.bottomNavIndex.value,
              gapLocation: GapLocation.center,
              notchSmoothness: NotchSmoothness.sharpEdge,
              leftCornerRadius: 10,
              rightCornerRadius: 10,
              onTap: (final int index) =>
                  controller.bottomNavIndex.value = index,
              //other params
            ),
          ),
        ),
      ),
    );
  }
}
