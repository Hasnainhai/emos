import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingCompletePopup extends StatelessWidget {
  const RatingCompletePopup({super.key});

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
              child: const Center(
                  child: Icon(
                Icons.done,
                color: AppColor.bgFillColor,
                size: 50,
              )),
            ),
            const VerticalSpeacing(
              24,
            ),
            Text(
              "Thank You!",
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
              8,
            ),
            Text(
              "your review has been\n submitted successfully.",
              textAlign: TextAlign.center,
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
              24,
            ),
            RoundedButton(
              title: "Done",
              onpress: () {
                Navigator.pushNamed(
                  context,
                  RouteName.homeView,
                );
              },
              bgColor: Colors.transparent,
              titleColor: AppColor.bgFillColor,
            ),
            const VerticalSpeacing(
              16,
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
