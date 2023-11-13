import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DownloadPopup extends StatelessWidget {
  const DownloadPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const VerticalSpeacing(30),
            Row(
              children: [
                const Icon(
                  Icons.download,
                  color: AppColor.textColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Download",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
              ],
            ),
            const VerticalSpeacing(20),
            const Divider(
              color: AppColor.textFieldColor,
            ),
            Row(
              children: [
                const Icon(
                  Icons.mail_outline,
                  color: AppColor.textColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Share Via Email",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
              ],
            ),
            const VerticalSpeacing(20),
            const Divider(
              color: AppColor.textFieldColor,
            ),
            Row(
              children: [
                const Icon(
                  Icons.download,
                  color: AppColor.textColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Share Via WhatsApp",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
              ],
            ),
            const VerticalSpeacing(30),
          ],
        ),
      ),
    );
  }
}
