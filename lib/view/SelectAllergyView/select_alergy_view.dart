import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../components/CheckBox/check_box.dart';
import '../../components/RoundedButton/rounded_button.dart';

class SelectAlergyView extends StatelessWidget {
  const SelectAlergyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgFillColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50.0),
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Column(
              children: [
                const VerticalSpeacing(32.0),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RouteName.profileView);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: AppColor.textColor,
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Text(
                      'Select Allergy',
                      style: GoogleFonts.getFont(
                        "Poppins",
                        textStyle: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: AppColor.textColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const VerticalSpeacing(24.0),
                const TapAllergyWidget(title: 'Allergy 001'),
                const VerticalSpeacing(16.0),
                const Divider(color: AppColor.textColor2),
                const VerticalSpeacing(24.0),
                const TapAllergyWidget(title: 'Allergy 002'),
                const VerticalSpeacing(16.0),
                const Divider(color: AppColor.textColor2),
                const VerticalSpeacing(24.0),
                const TapAllergyWidget(title: 'Allergy 003'),
                const VerticalSpeacing(16.0),
                const Divider(color: AppColor.textColor2),
                const VerticalSpeacing(24.0),
                const TapAllergyWidget(title: 'Allergy 004'),
                const VerticalSpeacing(16.0),
                const Divider(color: AppColor.textColor2),
                const VerticalSpeacing(24.0),
                const TapAllergyWidget(title: 'Allergy 005'),
                const VerticalSpeacing(16.0),
                const Divider(color: AppColor.textColor2),
                const VerticalSpeacing(24.0),
                const TapAllergyWidget(title: 'Allergy 006'),
                const VerticalSpeacing(16.0),
                const Divider(color: AppColor.textColor2),
                const VerticalSpeacing(24.0),
                const TapAllergyWidget(title: 'Allergy 007'),
                const VerticalSpeacing(16.0),
                const Divider(color: AppColor.textColor2),
                const VerticalSpeacing(30.0),
                RoundedButton(
                    title: 'Update',
                    onpress: () {},
                    bgColor: AppColor.bgFillColor,
                    titleColor: AppColor.whiteColor),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TapAllergyWidget extends StatelessWidget {
  const TapAllergyWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Allergy 001',
          style: GoogleFonts.getFont(
            "Poppins",
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColor.textColor,
            ),
          ),
        ),
        const MyCheckBox()
      ],
    );
  }
}
