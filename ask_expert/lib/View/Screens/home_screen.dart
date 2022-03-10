import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:ask_expert/Logic/Controllers/home_controller.dart';
import 'package:ask_expert/View/Widgets/Home%20Widgets/person_data_horizantal.dart';
import 'package:ask_expert/View/Widgets/Home%20Widgets/recent_expert_clip.dart';
import 'package:ask_expert/View/Widgets/Home%20Widgets/search_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({final Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(final BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 15,
              ),
              const SearchBox(),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: <Widget>[
                  const SizedBox(
                    width: 17,
                  ),
                  Image.asset(
                    "assets/Recent Expert icon.png",
                    height: 30,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Text(
                    "Recent Expert",
                    style:
                        GoogleFonts.roboto(fontSize: 32, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Stack(
                children: <Widget>[
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const <Widget>[
                        RecentExpertClip(
                          rate: '4.3',
                          imgURL: 'https://picsum.photos/200',
                          status: 'Available',
                          name: 'Ahmed Mohammed',
                        ),
                        RecentExpertClip(
                          rate: '5',
                          imgURL: 'https://picsum.photos/203',
                          status: 'In Meet',
                          name: 'Ziyad',
                        ),
                        RecentExpertClip(
                          rate: '3.2',
                          imgURL: 'https://picsum.photos/205',
                          status: 'Offline',
                          name: 'Ghareeb',
                        ),
                        RecentExpertClip(
                          rate: '5',
                          imgURL: 'https://picsum.photos/207',
                          status: 'In Meet',
                          name: 'Omar',
                        ),
                        RecentExpertClip(
                          rate: '5.5',
                          imgURL: 'https://picsum.photos/210',
                          status: 'Available',
                          name: 'Hossam',
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      height: 150,
                      width: 70,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[Color.fromRGBO(245, 248, 249, 0),Color.fromRGBO(245, 248, 249, 1)],
                        ),
                      ),
                      child: Image.asset('assets/Recent Expert Arrow.png'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    width: 17,
                  ),
                  Image.asset(
                    "assets/html tag.png",
                    height: 35,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Computer Science",
                        style: GoogleFonts.roboto(
                          fontSize: 32,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Featured Experts",
                        style: GoogleFonts.roboto(
                          fontSize: 26,
                          color: Colors.purple,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: _width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      offset: Offset(2,2),
                      blurRadius: 8,
                      color: Color.fromRGBO(42, 29, 118, 0.2),
                    ),
                  ],
                ),
                child: Column(
                  children: const <Widget>[
                    PersonData(
                      name: "Magdy",
                      rate: "5",
                      imgURL: "https://picsum.photos/207",
                      status: "Available",
                      description:
                          "he is good",
                    ),
                    PersonData(
                      name: "Ziyad",
                      rate: "3.3",
                      imgURL: "https://picsum.photos/208",
                      status: "Offline",
                      description:
                      "he is good",
                    ),
                    PersonData(
                      name: "Hossam",
                      rate: "5",
                      imgURL: "https://picsum.photos/211",
                      status: "In Meet",
                      description:
                      "he is good",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    width: 17,
                  ),
                  Image.asset(
                    "assets/root x.png",
                    height: 35,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Applied Mathematics",
                        style: GoogleFonts.roboto(
                          fontSize: 32,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Featured Experts",
                        style: GoogleFonts.roboto(
                          fontSize: 26,
                          color: Colors.purple,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: _width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      offset: Offset(2,2),
                      blurRadius: 8,
                      color: Color.fromRGBO(42, 29, 118, 0.2),
                    ),
                  ],
                ),
                child: Column(
                  children: const <Widget>[
                    PersonData(
                      name: "Magdy",
                      rate: "5",
                      imgURL: "https://picsum.photos/202",
                      status: "Available",
                      description:
                      "he is good",
                    ),
                    PersonData(
                      name: "Ziyad",
                      rate: "3.3",
                      imgURL: "https://picsum.photos/204",
                      status: "Offline",
                      description:
                      "he is good",
                    ),
                    PersonData(
                      name: "Hossam",
                      rate: "5",
                      imgURL: "https://picsum.photos/211",
                      status: "In Meet",
                      description:
                      "he is good",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: SizedBox(
          height: 84,
          width: 84,
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
