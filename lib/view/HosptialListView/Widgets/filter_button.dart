import 'package:emos/res/GlobalColors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HosptialFilterButton extends StatelessWidget {
  const HosptialFilterButton(
      {super.key,
      required this.fillColor,
      required this.text,
      required this.textColor});
  final Color fillColor;
  final String text;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: MediaQuery.of(context).size.width / 2.5,
      decoration: BoxDecoration(
        color: fillColor,
        border: Border.all(
          color: AppColor.bgFillColor,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.getFont(
            "Roboto",
            textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
