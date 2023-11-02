import 'package:flutter/material.dart';

import '../../../../res/GlobalColors/colors.dart';

class SocialAccounts extends StatelessWidget {
  const SocialAccounts({
    super.key, required this.img,
  });
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.0,
      width: 98.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          width: 1.0,
          color: AppColor.textColor2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Image.asset(img),
        ),
      ),
    );
  }
}
