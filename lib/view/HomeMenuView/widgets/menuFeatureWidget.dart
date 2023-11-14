// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../res/GlobalColors/colors.dart';

class MenufeatureWidget extends StatelessWidget {
  const MenufeatureWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });
  final String title;
  final IconData icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Row(
        children: [
          Icon(icon, color: AppColor.textColor),
          const SizedBox(width: 10.0),
          Text(
            title,
            style: GoogleFonts.getFont(
              "Poppins",
              textStyle: const TextStyle(
                fontSize: 18,
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
