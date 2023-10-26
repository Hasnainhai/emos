// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../res/GlobalColors/colors.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onpress;
  final Color bgColor;
  final Color titleColor;
  const RoundedButton({
    super.key,
    required this.title,
    required this.onpress,
    this.loading = false,
    required this.bgColor,
    required this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: 54.0,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Center(
          child: loading
              ? const CircularProgressIndicator(
                  color: AppColor.linearBgbuttonColor,
                )
              : Text(
                  title,
                  style: TextStyle(
                    color: titleColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
        ),
      ),
    );
  }
}
