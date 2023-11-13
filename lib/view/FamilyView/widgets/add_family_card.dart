import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../components/VerticalSpacing/vertical_spacing.dart';
import '../../../res/GlobalColors/colors.dart';

class AddFamilyCardWidget extends StatelessWidget {
  const AddFamilyCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          width: 1.5,
          color: AppColor.bgFillColor,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: ListTile(
            leading: const CircleAvatar(
              radius: 40,
              backgroundColor: AppColor.bgFillColor,
            ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sushan Sing',
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                Text(
                  '21/9/2023',
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColor.bgFillColor,
                    ),
                  ),
                ),
                const VerticalSpeacing(5.0),
                Container(
                  height: 18,
                  width: 81,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.bgFillColor),
                  child: Center(
                    child: Text(
                      'YourSelf',
                      style: GoogleFonts.getFont(
                        "Roboto",
                        textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColor.simpleBgTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            trailing: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.edit,
                  color: AppColor.linearBgTextColor,
                ),
                Icon(
                  Icons.delete,
                  color: AppColor.linearBgTextColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
