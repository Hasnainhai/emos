import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 12,
              width: 12,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.bgFillColor,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              "24 May 2023   -   21:18",
              style: GoogleFonts.getFont(
                "Roboto",
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColor.bgFillColor,
                ),
              ),
            ),
          ],
        ),
        const VerticalSpeacing(
          10,
        ),
        Text(
          "Generalised muscle pain",
          style: GoogleFonts.getFont(
            "Roboto",
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColor.textColor,
            ),
          ),
        ),
        const VerticalSpeacing(
          10,
        ),
        Text(
          "Patient presents with persistent generalized muscle pain, causing discomfort and interfering with daily activities. Previous musculoskeletal issues reported.",
          style: GoogleFonts.getFont(
            "Roboto",
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColor.bgFillColor,
            ),
          ),
        ),
        const VerticalSpeacing(
          10,
        ),
        const Divider(
          color: AppColor.textFieldColor,
          thickness: 1,
        )
      ],
    );
  }
}
