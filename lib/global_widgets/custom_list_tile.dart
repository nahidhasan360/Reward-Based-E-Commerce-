import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String subtitle;

  const CustomListTile({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius: 22,
        backgroundColor: iconColor.withOpacity(0.1),
        child: Icon(icon, color: iconColor, size: 26),
      ),
      title: Text(
        title,
        style: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: GoogleFonts.inter(
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: Colors.black87,
          height: 1.3,
        ),
      ),
    );
  }
}



// the below code is how can i use this custom code



// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class RewardsSection extends StatelessWidget {
//   const RewardsSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: const [
//             CustomListTile(
//               icon: Icons.account_balance_wallet_outlined,
//               iconColor: Colors.orange,
//               title: "Claim Instant Rebates",
//               subtitle:
//               "Buy the product, upload your receipt and get cash back instantly.",
//             ),
//             SizedBox(height: 16),
//             CustomListTile(
//               icon: Icons.star,
//               iconColor: Colors.amber,
//               title: "Earn A Bonus Review",
//               subtitle:
//               "Answer 3 quick questions after verification to earn an extra \$1",
//             ),
//             SizedBox(height: 16),
//             CustomListTile(
//               icon: Icons.camera_alt_outlined,
//               iconColor: Colors.purple,
//               title: "No Account? You Can Still Earn",
//               subtitle:
//               "Claim your first rebate as a guest. Create account late to cash out to PayPal or Venmo.",
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
