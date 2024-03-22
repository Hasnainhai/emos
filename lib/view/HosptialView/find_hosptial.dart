import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/routes/routes_name.dart';
import 'package:emos/view/DoctorViews/Widgets/search_field.dart';
import 'package:emos/view/HosptialView/Widget/hosptial_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FindHosptialView extends StatefulWidget {
  const FindHosptialView({super.key});

  @override
  State<FindHosptialView> createState() => _FindHosptialViewState();
}

class _FindHosptialViewState extends State<FindHosptialView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      "Find Hosptial",
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
                const SearchField(
                  hintText: "Search Hosptial",
                ),
                SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      const VerticalSpeacing(24),
                      HosptialCard(
                        viewFun: () {
                          Navigator.pushNamed(
                            context,
                            RouteName.detailhosptialview,
                          );
                        },
                      ),
                      const VerticalSpeacing(16),
                      HosptialCard(
                        viewFun: () {
                          Navigator.pushNamed(
                            context,
                            RouteName.detailhosptialview,
                          );
                        },
                      ),
                      const VerticalSpeacing(16),
                      HosptialCard(
                        viewFun: () {
                          Navigator.pushNamed(
                            context,
                            RouteName.detailhosptialview,
                          );
                        },
                      ),
                      const VerticalSpeacing(16),
                      HosptialCard(
                        viewFun: () {
                          Navigator.pushNamed(
                            context,
                            RouteName.detailhosptialview,
                          );
                        },
                      ),
                      const VerticalSpeacing(16),
                      HosptialCard(
                        viewFun: () {
                          Navigator.pushNamed(
                            context,
                            RouteName.detailhosptialview,
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
