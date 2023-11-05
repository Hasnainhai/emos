import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../res/GlobalColors/colors.dart';

class homeFeatures extends StatelessWidget {
  const homeFeatures(
      {super.key, required this.img, required this.name,});
  final String img;
  final String name;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 40.0,
            width: 40.0,
            child: Image.asset(
              img,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            name,
            style: GoogleFonts.getFont(
              "Poppins",
              textStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: AppColor.textColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
