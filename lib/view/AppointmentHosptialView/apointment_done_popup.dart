import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApointmenDonetPopup extends StatelessWidget {
  const ApointmenDonetPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.cancel,
                    color: AppColor.bgFillColor,
                  ),
                ),
              ],
            ),
            const VerticalSpeacing(20),
            Container(
              height: 144,
              width: 144,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 10, color: AppColor.textFieldColor),
              ),
              child: Center(
                child: Image.asset(
                  "images/hospital.png",
                  height: 64,
                  width: 54,
                ),
              ),
            ),
            const VerticalSpeacing(
              24,
            ),
            Text(
              "You arrived at \nHospital",
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont(
                "Roboto",
                textStyle: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: AppColor.textColor,
                ),
              ),
            ),
            const VerticalSpeacing(
              24,
            ),
            RoundedButton(
              title: "Done",
              onpress: () {},
              bgColor: Colors.transparent,
              titleColor: AppColor.bgFillColor,
            ),
            const VerticalSpeacing(
              24,
            ),
          ],
        ),
      ),
    );
  }
}
