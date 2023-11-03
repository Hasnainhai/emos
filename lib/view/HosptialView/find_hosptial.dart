import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
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
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColor.blackColor,
            size: 18,
          ),
        ),
        backgroundColor: Colors.transparent,
        title: Text(
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
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SearchField(
                  hintText: "Search Hosptial",
                ),
                VerticalSpeacing(24),
                HosptialCard(),
                VerticalSpeacing(16),
                HosptialCard(),
                VerticalSpeacing(16),
                HosptialCard(),
                VerticalSpeacing(16),
                HosptialCard(),
                VerticalSpeacing(16),
                HosptialCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
