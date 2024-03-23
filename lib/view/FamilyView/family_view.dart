import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/view/FamilyView/widgets/add_family_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../res/GlobalColors/colors.dart';
import '../../routes/routes_name.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgFillColor,
      body: SafeArea(
        child: Container(
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
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  const VerticalSpeacing(26.0),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const ImageIcon(
                          AssetImage("images/backicon.png"),
                          color: AppColor.textColor,
                        ),
                      ),
                      const SizedBox(width: 60.0),
                      Text(
                        'Family Members',
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
                  const AddFamilyCardWidget(),
                  const VerticalSpeacing(16.0),
                  const AddFamilyCardWidget(),
                  const VerticalSpeacing(16.0),
                  const AddFamilyCardWidget(),
                  const VerticalSpeacing(16.0),
                  const AddFamilyCardWidget(),
                  const VerticalSpeacing(46.0),
                  RoundedButton(
                    title: 'Add New Dependent',
                    onpress: () {
                      Navigator.pushNamed(context, RouteName.cardInfotview);
                    },
                    bgColor: Colors.transparent,
                    titleColor: AppColor.linearBgTextColor,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
