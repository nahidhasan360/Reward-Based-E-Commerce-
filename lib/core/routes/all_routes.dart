import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../views/splash_screen/splash2.dart';
import '../../views/splash_screen/splash_screen.dart';

class AppRoutes {
  //=========================== Splash Screen Part ======================//
  static const String splashScreen1 = "/SplashScreen";
  static const String splashScreen2 = "/SplashScreen2";


  // ================ Home Screen ================================
  static const String homeScreen = "/HomeScreen";

  // bridge

  static List<GetPage> routes = [
    //=========================== onboarding Part 1  =======================//
      GetPage(name: splashScreen1, page: () => SplashScreen()),
      GetPage(name: splashScreen2, page: () => SplashScreen2()),








    //   GetPage(name: onboarding2, page: () => Onboarding2(),
    //     transition: Transition.fadeIn,
    //     transitionDuration: const Duration(seconds: 1),),
    //
    //
    //     // ====================== welcome screen =============================//
    //   GetPage(name:welcomeScreen, page:() => WelcomeScreen(),
    //    transition: Transition.native,
    //     transitionDuration: const Duration(seconds: 1),
    //   ),
    //
    // // ============================== Home Screen ================================
    //   GetPage(name: homeScreen, page:() => HomeScreen(),
    //     binding: HomeBinding(),
    //   ),
  ];
}
