import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/GlobalColors/colors.dart';

class EditMedicalHistory extends StatelessWidget {
  const EditMedicalHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgFillColor,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(24),
            ),
            color: AppColor.whiteColor,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VerticalSpeacing(40.0),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: AppColor.textColor,
                        size: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Edit Medical History",
                      style: GoogleFonts.getFont(
                        "Roboto",
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColor.textColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const VerticalSpeacing(30.0),
                Text(
                  'Date',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.getFont(
                    "Gothic A1",
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.blackColor,
                    ),
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.datetime,
                  style: TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.calendar_month_outlined),
                    hintText: 'Please enter date',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColor.bgFillColor,
                      ),
                    ),
                  ),
                ),
                const VerticalSpeacing(10.0),
                Text(
                  'Title',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.getFont(
                    "Gothic A1",
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.blackColor,
                    ),
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                    hintText: 'Please enter the title',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColor.bgFillColor,
                      ),
                    ),
                  ),
                ),
                const VerticalSpeacing(10.0),
                Text(
                  'Description',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.getFont(
                    "Gothic A1",
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.blackColor,
                    ),
                  ),
                ),
                const VerticalSpeacing(16.0),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                    hintText: 'Please enter description',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColor.bgFillColor,
                      ),
                    ),
                  ),
                ),
                const VerticalSpeacing(46.0),
                RoundedButton(
                  title: 'Save',
                  onpress: () {},
                  bgColor: AppColor.bgFillColor,
                  titleColor: AppColor.whiteColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
