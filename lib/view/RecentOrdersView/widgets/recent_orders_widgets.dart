import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../components/VerticalSpacing/vertical_spacing.dart';
import '../../../res/GlobalColors/colors.dart';

class RecentOrdersWidget extends StatelessWidget {
  const RecentOrdersWidget({
    super.key,
    required this.btnBgColor,
    required this.btnTxt,
  });
  final Color btnBgColor;
  final String btnTxt;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            height: 56.0,
            width: 56.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: AppColor.bgFillColor,
            ),
          ),
          title: Text(
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
          subtitle: Text(
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
        ),
        const VerticalSpeacing(12.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Today at 01:20 PM',
              style: GoogleFonts.getFont(
                "Roboto",
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColor.bgFillColor,
                ),
              ),
            ),
            Container(
              height: 18.0,
              width: 87.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: btnBgColor),
              child: Center(
                child: Text(
                  btnTxt,
                  style: const TextStyle(color: AppColor.whiteColor),
                ),
              ),
            ),
          ],
        ),
        const VerticalSpeacing(20.0),
        const Divider(
          color: AppColor.chatRecvColor,
        ),
      ],
    );
  }
}
