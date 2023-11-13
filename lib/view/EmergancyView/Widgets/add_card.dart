import 'package:emos/res/GlobalColors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class AddCard extends StatelessWidget {
  AddCard(
      {super.key,
      required this.name,
      required this.dob,
      required this.person,
      required this.borderColor});
  String name;
  String dob;
  String person;
  Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xff000000).withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 6),
          ),
        ],
        borderRadius: BorderRadius.circular(16),
        color:  Colors.transparent,
        border: Border.all(color: borderColor, width: 1.5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircleAvatar(
              radius: 32,
              backgroundColor: AppColor.bgFillColor,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
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
                  dob,
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColor.bgFillColor,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.bgFillColor),
              child: Center(
                child: Text(
                  person,
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
            )
          ],
        ),
      ),
    );
  }
}
