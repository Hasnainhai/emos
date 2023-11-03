import 'dart:ui';

import 'package:emos/res/GlobalColors/colors.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColor.blackColor.withOpacity(0.7),
            blurRadius: 8,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.transparent,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
