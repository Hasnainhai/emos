import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/view/Home/DoctorViews/Widgets/search_field.dart';
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
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: AppColor.blackColor,
          size: 18,
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Column(
            children: [SearchField()],
          ),
        ),
      ),
    );
  }
}
