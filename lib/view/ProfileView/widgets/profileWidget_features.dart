import 'package:flutter/material.dart';

import '../../../res/GlobalColors/colors.dart';

class ProfileWidgetFeatures extends StatelessWidget {
  const ProfileWidgetFeatures({
    super.key,
    required this.icon,
    required this.title,
  });
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.alergyBtColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
          onTap: () {},
          leading: Icon(
            icon,
            color: AppColor.textColor,
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: AppColor.textColor,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: AppColor.textColor,
          )),
    );
  }
}
