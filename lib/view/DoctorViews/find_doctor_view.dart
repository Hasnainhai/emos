import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/routes/routes_name.dart';
import 'package:emos/view/DoctorViews/Widgets/doctor_card.dart';
import 'package:emos/view/DoctorViews/Widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FindDoctorView extends StatefulWidget {
  const FindDoctorView({super.key});

  @override
  State<FindDoctorView> createState() => _FindDoctorViewState();
}

class _FindDoctorViewState extends State<FindDoctorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xff000000).withOpacity(0.7),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
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
                    const SizedBox(
                      width: 80,
                    ),
                    Text(
                      "Find Doctors",
                      style: GoogleFonts.getFont(
                        "Roboto",
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColor.blackColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const VerticalSpeacing(20),
                SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      const SearchField(
                        hintText: "Search doctor",
                      ),
                      const VerticalSpeacing(24),
                      DoctorCard(
                        viewFun: () {
                          Navigator.pushNamed(
                            context,
                            RouteName.detaildoctorview,
                          );
                        },
                      ),
                      const VerticalSpeacing(16),
                      DoctorCard(
                        viewFun: () {
                          Navigator.pushNamed(
                            context,
                            RouteName.detaildoctorview,
                          );
                        },
                      ),
                      const VerticalSpeacing(16),
                      DoctorCard(
                        viewFun: () {
                          Navigator.pushNamed(
                            context,
                            RouteName.detaildoctorview,
                          );
                        },
                      ),
                      const VerticalSpeacing(16),
                      DoctorCard(
                        viewFun: () {
                          Navigator.pushNamed(
                            context,
                            RouteName.detaildoctorview,
                          );
                        },
                      ),
                      const VerticalSpeacing(16),
                      DoctorCard(
                        viewFun: () {
                          Navigator.pushNamed(
                            context,
                            RouteName.detaildoctorview,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
