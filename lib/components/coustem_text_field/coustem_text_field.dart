import 'package:emos/res/GlobalColors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldCustom extends StatefulWidget {
  const TextFieldCustom({
    Key? key,
    this.hintText,
    required int maxLines,
    this.controller,
    this.keyboardType,
    required this.icon,
  }) : super(key: key);

  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? hintText;
  final IconData icon;
  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType,
      style: const TextStyle(
        fontSize: 15,
        color: AppColor.textColor,
      ),
      controller: widget.controller,
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.bgFillColor,
          ), // Change this color to set the bottom border color
        ),
        hintText: widget.hintText,
        prefixIcon: Icon(
          widget.icon,
          color: AppColor.bgFillColor,
        ),
        hintStyle: GoogleFonts.getFont(
          "Roboto",
          textStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: AppColor.bgFillColor,
          ),
        ),
      ),
    );
  }
}
