import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
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
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SearchField(
                  hintText: "Search doctor",
                ),
                VerticalSpeacing(24),
                DoctorCard(),
                VerticalSpeacing(16),
                DoctorCard(),
                VerticalSpeacing(16),
                DoctorCard(),
                VerticalSpeacing(16),
                DoctorCard(),
                VerticalSpeacing(16),
                DoctorCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
