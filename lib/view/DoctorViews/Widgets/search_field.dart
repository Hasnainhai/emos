import 'package:emos/res/GlobalColors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    required this.hintText,
    this.controller,
  });
  final String hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: MediaQuery.of(context).size.width,
      child: Container(
        height: 56,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
        ),
        child: Center(
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: GoogleFonts.getFont(
                  "Roboto",
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: AppColor.textColor,
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: AppColor.textColor,
                ),
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.transparent,
                focusColor: AppColor.bgFillColor),
          ),
        ),
      ),
    );
  }
}
