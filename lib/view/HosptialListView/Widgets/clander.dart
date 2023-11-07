import 'package:emos/res/GlobalColors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Calander extends StatefulWidget {
  const Calander({super.key});

  @override
  State<Calander> createState() => _CalanderState();
}

class _CalanderState extends State<Calander> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 62,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColor.bgFillColor,
        ),
      ),
      child: Column(
        children: [
          Text(
            "Mon",
            style: GoogleFonts.getFont(
              "Roboto",
              textStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: AppColor.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
