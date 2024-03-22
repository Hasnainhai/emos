// ignore_for_file: file_names

import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/view/HosptialListView/Widgets/filter_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadiologyFilter extends StatefulWidget {
  const RadiologyFilter({super.key});

  @override
  State<RadiologyFilter> createState() => _RadiologyFilterState();
}

class _RadiologyFilterState extends State<RadiologyFilter> {
  bool first = true;
  bool second = false;
  bool third = false;

  bool fourth = false;

  bool fifth = false;
  bool six = false;
  bool seven = true;
  bool eight = false;

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 5,
                  ),
                  Text(
                    'Filter Radiology',
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
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Filter by Tests',
                    style: GoogleFonts.getFont(
                      "Roboto",
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColor.textColor,
                      ),
                    ),
                  ),
                  const VerticalSpeacing(16),
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
                            fillColor: first
                                ? AppColor.bgFillColor
                                : Colors.transparent,
                            text: "X-Ray",
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
                            text: "CT-Scan",
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
                            fillColor: third
                                ? AppColor.bgFillColor
                                : Colors.transparent,
                            text: "MRI",
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
                            text: "2D-Echo",
                            textColor: fourth
                                ? AppColor.whiteColor
                                : AppColor.bgFillColor),
                      ),
                    ],
                  ),
                  VerticalSpeacing(MediaQuery.of(context).size.width / 2 + 150),
                  RoundedButton(
                    title: "Filter",
                    onpress: () {
                      Navigator.pop(context);
                    },
                    bgColor: AppColor.bgFillColor,
                    titleColor: AppColor.whiteColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
