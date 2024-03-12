// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../components/VerticalSpacing/vertical_spacing.dart';
import '../../../res/GlobalColors/colors.dart';

// ignore: camel_case_types
class MybookingCard extends StatefulWidget {
  const MybookingCard({
    super.key,
  });

  @override
  State<MybookingCard> createState() => _MybookingCardState();
}

class _MybookingCardState extends State<MybookingCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 114.0,
      width: double.infinity,
      color: AppColor.whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Text(
                  '12/1/2024',
                  style: const TextStyle(
                    color: AppColor.grayColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 12.0,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 30,
                    width: 80,
                    color: AppColor.bgFillColor,
                    child: const Center(
                      child: Text(
                        'Track Order',
                        style: TextStyle(
                          color: AppColor.whiteColor,
                          fontWeight: FontWeight.w300,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const VerticalSpeacing(10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Status:',
                  style: TextStyle(
                    color: AppColor.grayColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'pending',
                    style: const TextStyle(
                      color: AppColor.bgFillColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
