import 'package:e_commerce/global_widgets/custom_text.dart';
import 'package:e_commerce/utils/app_strings.dart';
import 'package:e_commerce/utils/assets_manager.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../global_widgets/custom_button.dart';
import '../../global_widgets/custom_list_tile.dart';
import 'controller.dart';

class SplashScreen2 extends StatelessWidget {
   SplashScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        margin: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        decoration: BoxDecoration(
          boxShadow: [ BoxShadow(
             color: AppColors.black.withValues(alpha: 0.10),
             blurRadius: 10,
            spreadRadius: 10,
            offset: Offset.zero,
          )

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

                











              ],
            ),
          ],
        ),
      ),

      // body:  Center(child: Text(' THIS IS SPLASH SCREEN 2',style:TextStyle(color: AppColors.bgColor),)),
    );
  }
}
