import 'package:ask_expert/Logic/Binding/home_controller_binding.dart';
import 'package:ask_expert/Screens/home_screen.dart';
import 'package:ask_expert/Screens/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/SplashScreen';
  static const String homeScreen = '/HomeScreen';

  static final List<GetPage<dynamic>> routesList = <GetPage<String>>[
    GetPage<String>(
      name: splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage<String>(
      name: homeScreen,
      page: () => const HomeScreen(),
      binding: HomeControllerBinding(),
    ),
  ];
}
