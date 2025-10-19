import 'package:e_commerce/utils/app_strings.dart';
import 'package:e_commerce/utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../core/routes/all_routes.dart';
import '../../utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    print("InitState called");
    Future.delayed(const Duration(seconds: 5), () {
      print("Navigating to onboarding2");
      Get.offNamed(AppRoutes.splashScreen2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              // Status bar spacing
              SizedBox(height: 20),
              // Main content centered
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // ==================  Heart logo ================//
                      // SvgPicture.asset(SvgManager.logo, width: 70.w),
                      Image.asset(ImageManager.logo, width: 130.w),
                      // ================== Heart talk Text ================//
                      Transform.translate(
                        offset: const Offset(0, -4),
                        child: Text(
                          AppStrings.on,
                          style: TextStyle(
                            fontSize: 20.h,
                            color: AppColors.black,

                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
