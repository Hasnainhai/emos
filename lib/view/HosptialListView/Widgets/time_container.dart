import 'package:emos/res/GlobalColors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimeContainer extends StatelessWidget {
  const TimeContainer(
      {super.key,
      required this.time,
      required this.bgColor,
      required this.textColor,
      required this.ontap});
  final String time;
  final Color bgColor;
  final Color textColor;

  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 36,
        width: 158,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(
            12,
          ),
          border: Border.all(
            color: AppColor.bgFillColor,
          ),
        ),
        child: Center(
          child: Text(
            time,
            style: GoogleFonts.getFont(
              "Roboto",
              textStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
