import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../components/VerticalSpacing/vertical_spacing.dart';
import '../../../res/GlobalColors/colors.dart';

class InvoicesCardWidget extends StatelessWidget {
  const InvoicesCardWidget({
    super.key,
    required this.img,
    required this.title,
    required this.price,
    required this.payment,
    required this.ontap,
  });
  final String img;
  final String title;
  final String price;
  final String payment;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            ontap();
          },
          leading: Container(
            height: 56.0,
            width: 56.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: AppColor.chatRecvColor,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(img),
              ),
            ),
          ),
          title: Text(
            title,
            style: GoogleFonts.getFont(
              "Roboto",
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColor.textColor,
              ),
            ),
          ),
          subtitle: Text(
            '21/9/2023',
            style: GoogleFonts.getFont(
              "Roboto",
              textStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColor.bgFillColor,
              ),
            ),
          ),
          trailing: Container(
            height: 32.0,
            width: 32.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
              border: Border.all(
                width: 1.0,
                color: AppColor.textFieldColor,
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.linear_scale_outlined,
                color: AppColor.textFieldColor,
              ),
            ),
          ),
        ),
        const VerticalSpeacing(12.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'price : ',
              style: GoogleFonts.getFont(
                "Roboto",
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColor.bgFillColor,
                ),
              ),
            ),
            Text(
              price,
              style: GoogleFonts.getFont(
                "Roboto",
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColor.textColor,
                ),
              ),
            ),
          ],
        ),
        const VerticalSpeacing(10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Payment Method : ',
              style: GoogleFonts.getFont(
                "Roboto",
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColor.bgFillColor,
                ),
              ),
            ),
            Text(
              payment,
              style: GoogleFonts.getFont(
                "Roboto",
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColor.textColor,
                ),
              ),
            ),
          ],
        ),
        const VerticalSpeacing(20.0),
        const Divider(
          color: AppColor.chatRecvColor,
        ),
      ],
    );
  }
}
