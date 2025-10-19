import 'package:e_commerce/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'core/routes/all_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: AppColors.systemStatus, // Set visible background color
      statusBarIconBrightness: Brightness.dark, // Android: dark icons
      statusBarBrightness: Brightness.light, // iOS: light background
    ),
  );
  // DependencyInjection di = DependencyInjection();
  // di.dependencies();
  // await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(375, 812),
      child: GetMaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.bgColor,
          appBarTheme: const AppBarTheme(
            toolbarHeight: 65,
            elevation: 0,
            centerTitle: true,
            backgroundColor: AppColors.bgColor,
            iconTheme: IconThemeData(color: AppColors.black),
          ),
        ),
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 200),
        initialRoute: AppRoutes.splashScreen1,
        navigatorKey: Get.key,
        getPages: AppRoutes.routes,
      ),
    );
  }
}
