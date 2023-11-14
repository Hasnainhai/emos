// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../components/CheckBox/check_box.dart';
import '../../../res/GlobalColors/colors.dart';

class TapAllergyWidget extends StatelessWidget {
  const TapAllergyWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Allergy 001',
          style: GoogleFonts.getFont(
            "Poppins",
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColor.textColor,
            ),
          ),
        ),
        const MyCheckBox()
      ],
    );
  }
}
