import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/routes/routes_name.dart';
import 'package:emos/view/HosptialListView/Widgets/filter_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectServiceView extends StatefulWidget {
  const SelectServiceView({super.key});

  @override
  State<SelectServiceView> createState() => _SelectServiceViewState();
}

class _SelectServiceViewState extends State<SelectServiceView> {
  double progress = 0.3;
  bool first = true;
  bool second = false;
  bool third = false;

  bool fourth = false;

  bool fifth = false;
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
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                SizedBox(
                  width: double.infinity,
                  child: LinearProgressIndicator(
                    value: progress,
                    minHeight: 2,
                    backgroundColor: AppColor.textColor2,
                    valueColor: const AlwaysStoppedAnimation<Color>(
                        AppColor.bgFillColor),
                  ),
                ),
                const VerticalSpeacing(30.0),
                Text(
                  "Select services",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                const VerticalSpeacing(20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          first = !first;
                        });
                      },
                      child: HosptialFilterButton(
                          fillColor:
                              first ? AppColor.bgFillColor : Colors.transparent,
                          text: "X-ray ",
                          textColor: first
                              ? AppColor.whiteColor
                              : AppColor.bgFillColor),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          second = !second;
                        });
                      },
                      child: HosptialFilterButton(
                          fillColor: second
                              ? AppColor.bgFillColor
                              : Colors.transparent,
                          text: "Sonography",
                          textColor: second
                              ? AppColor.whiteColor
                              : AppColor.bgFillColor),
                    ),
                  ],
                ),
                const VerticalSpeacing(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          third = !third;
                        });
                      },
                      child: HosptialFilterButton(
                          fillColor:
                              third ? AppColor.bgFillColor : Colors.transparent,
                          text: "CT-scan",
                          textColor: third
                              ? AppColor.whiteColor
                              : AppColor.bgFillColor),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          fourth = !fourth;
                        });
                      },
                      child: HosptialFilterButton(
                          fillColor: fourth
                              ? AppColor.bgFillColor
                              : Colors.transparent,
                          text: "MRI",
                          textColor: fourth
                              ? AppColor.whiteColor
                              : AppColor.bgFillColor),
                    ),
                  ],
                ),
                const VerticalSpeacing(16),
                InkWell(
                  onTap: () {
                    setState(() {
                      fifth = !fifth;
                    });
                  },
                  child: HosptialFilterButton(
                    fillColor:
                        fifth ? AppColor.bgFillColor : Colors.transparent,
                    text: "2D Echo",
                    textColor:
                        fifth ? AppColor.whiteColor : AppColor.bgFillColor,
                  ),
                ),
                const VerticalSpeacing(30),
                Text(
                  "Reason & Image",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                const VerticalSpeacing(16),
                TextField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    hintStyle: GoogleFonts.getFont(
                      "Roboto",
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.bgFillColor,
                      ),
                    ),
                    hintText: 'Enter your reason for examination here',
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color:
                            AppColor.bgFillColor, // Use the desired color here
                      ),
                    ),
                  ),
                ),
                const VerticalSpeacing(20),
                Row(
                  children: [
                    Container(
                      height: 72,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColor.bgFillColor,
                        ),
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: AppColor.bgFillColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ralated Images",
                          style: GoogleFonts.getFont(
                            "Roboto",
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColor.textColor,
                            ),
                          ),
                        ),
                        Text(
                          "Upload images related to your\n medical condition",
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
                  ],
                ),
                VerticalSpeacing(MediaQuery.of(context).size.height / 8),
                RoundedButton(
                  title: "Search Radiology",
                  onpress: () {
                    Navigator.pushNamed(
                      context,
                      RouteName.radiologypatientview,
                    );
                  },
                  bgColor: AppColor.bgFillColor,
                  titleColor: AppColor.whiteColor,
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
