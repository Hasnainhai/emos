import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/components/cardFieldCustom/card_field_custom.dart';
import 'package:emos/components/coustem_text_field/coustem_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/GlobalColors/colors.dart';

class EditMedicalHistory extends StatelessWidget {
  const EditMedicalHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgFillColor,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(24),
            ),
            color: AppColor.whiteColor,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              children: [
                const VerticalSpeacing(40.0),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: AppColor.textColor,
                        size: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Edit Medical History",
                      style: GoogleFonts.getFont(
                        "Roboto",
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColor.textColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const VerticalSpeacing(30.0),
                const CardFieldCustom(maxLines: 0, text: 'Title'),
                const VerticalSpeacing(16.0),
                const CardFieldCustom(maxLines: 5, text: 'Date of Check'),
                const VerticalSpeacing(16.0),
                const CardFieldCustom(maxLines: 0, text: 'Discription'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
