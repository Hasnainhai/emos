import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/components/appBarField/appBar_field.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/view/EmergancyView/Widgets/add_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/coustem_text_field/coustem_text_field.dart';

class EmergancyView extends StatelessWidget {
  const EmergancyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgFillColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
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
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VerticalSpeacing(30.0),

              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColor.textColor,
                      size: 18,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    "Step 1 of 3: Choose Doctor",
                    style: GoogleFonts.getFont(
                      "Roboto",
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColor.bgFillColor,
                      ),
                    ),
                  ),
                ],
              ),
              const VerticalSpeacing(30.0),

              Text(
                "Chose Patient",
                style: GoogleFonts.getFont(
                  "Roboto",
                  textStyle: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: AppColor.textColor,
                  ),
                ),
              ),
              // const VerticalSpeacing(5.0),
              Text(
                "Selection of family members",
                style: GoogleFonts.getFont(
                  "Roboto",
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColor.bgFillColor,
                  ),
                ),
              ),
              const VerticalSpeacing(16.0),
              AddCard(
                name: 'Kaixa Pham',
                dob: '21-09-1995',
                person: 'Yourself',
              ),
              const VerticalSpeacing(16.0),
              AddCard(
                name: 'Stephen Chow',
                dob: '12-11-1990',
                person: 'Brother',
              ),
              const VerticalSpeacing(16.0),
              RoundedButton(
                title: 'Continue',
                onpress: () {},
                bgColor: AppColor.simpleBgbuttonColor,
                titleColor: AppColor.simpleBgTextColor,
              ),
              const VerticalSpeacing(20.0),
            ],
          ),
        ),
      ),
    );
  }
}
