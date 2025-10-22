import 'package:e_commerce/utils/app_strings.dart';
import 'package:e_commerce/utils/assets_manager.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/views/splash_screen/splashBtnController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../global_widgets/custom_list_tile.dart';

class SplashScreen2 extends StatelessWidget {
  SplashScreen2({super.key});

  final controller = Get.put(ButtonController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        margin: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withValues(alpha: 0.10),
              blurRadius: 10,
              spreadRadius: 10,
              offset: Offset.zero,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Auto height magic!
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // splash screen  top work =======================
            Image.asset(ImageManager.logo, width: 200.w, fit: BoxFit.cover),
            Transform.translate(
              offset: const Offset(0, -10),
              child: Text(
                AppStrings.splashTitle,
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),

            Transform.translate(
              offset: const Offset(0, -7),
              child: Text(
                textAlign: TextAlign.center,
                AppStrings.splashSubTitle,
                style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.subTitleColor,
                ),
              ),
            ),

            // ========== end ======================
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomListTile(
                  icon: Icons.account_balance_wallet_outlined,
                  iconColor: Colors.orange,
                  title: "Claim Instant Rebates",
                  subtitle:
                      "Buy the product, upload your receipt and get cash back instantly.",
                ),
                const SizedBox(height: 16),
                const CustomListTile(
                  icon: Icons.star,
                  iconColor: Colors.amber,
                  title: "Earn A Bonus Review",
                  subtitle:
                      "Answer 3 quick questions after verification to earn an extra \$1",
                ),
                const SizedBox(height: 16),
                const CustomListTile(
                  icon: Icons.camera_alt_outlined,
                  iconColor: Colors.purple,
                  title: "No Account? You Can Still Earn",
                  subtitle:
                      "Claim your first rebate as a guest. Create account late to cash out to PayPal or Venmo.",
                ),
                SizedBox(height: 10),
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () => controller.selectButton("earning"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              controller.selectedButton.value == "earning"
                              ? AppColors.btnColor
                              : AppColors.bgColor,
                          foregroundColor:
                              controller.selectedButton.value == "earning"
                              ? AppColors.bgColor
                              : AppColors.primary,
                          side: const BorderSide(
                            color: AppColors.btnColor,
                            width: 1.5,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 19,
                            vertical: 14,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation:
                              controller.selectedButton.value == "earning"
                              ? 3
                              : 0,
                        ),
                        child: const Text(
                          "Start Earning",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      ElevatedButton(
                        onPressed: () => controller.selectButton("upload"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              controller.selectedButton.value == "upload"
                              ? AppColors.primary
                              : AppColors.bgColor,
                          foregroundColor:
                              controller.selectedButton.value == "upload"
                              ? AppColors.bgColor
                              : AppColors.btnColor,
                          side: BorderSide(
                            color: AppColors.btnColor,
                            width: 1.5,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 14,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation:
                              controller.selectedButton.value == "upload"
                              ? 3
                              : 0,
                        ),
                        child: const Text(
                          "Upload from Photos",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

               SizedBox(height: 10,),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // 🔹 Title
                const Text(
                  "Browse Offers Nearby",
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 8),

                // 🔹 Subtitle
                const Text(
                  "Secure payouts via Paypal or Venmo once your wards\n are verified.",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    height: 1.4,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 16),

                // 🔹 Bottom Text (Sign Up)
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    children: [
                      TextSpan(text: "Created an account? "),
                      TextSpan(
                        text: "Sign Up",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

          ],
        ),
      ),

    );
  }
}
