import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../components/VerticalSpacing/vertical_spacing.dart';
import '../../../res/GlobalColors/colors.dart';

class SymptomsWidget extends StatelessWidget {
  const SymptomsWidget({
    super.key,
    required this.img,
    required this.title,
  });
  final String img;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.0,
      width: 70.0,
      child: Column(
        children: [
          Container(
            height: 44.0,
            width: 44.0,
            decoration: BoxDecoration(
              color: AppColor.symtomsBgtColor,
              borderRadius: BorderRadius.circular(21.0),
              border: Border.all(width: 1.0, color: AppColor.bgFillColor),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(img),
              ),
            ),
          ),
          const VerticalSpeacing(10.0),
          Text(
            title,
            style: GoogleFonts.getFont(
              "Poppins",
              textStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: AppColor.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
