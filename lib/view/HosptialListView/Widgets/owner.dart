import 'package:emos/res/GlobalColors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class OwnerWidget extends StatelessWidget {
  OwnerWidget({
    super.key,
    required this.circleColor,
    required this.owner,
  });
  Color circleColor;
  String owner;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        border: Border.all(color: AppColor.textColor2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 4, right: 4),
          child: Row(
            children: [
              Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: circleColor,
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              Text(
                owner,
                style: GoogleFonts.getFont(
                  "Roboto",
                  textStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColor.textColor2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
