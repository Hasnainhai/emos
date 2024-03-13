// ignore_for_file: file_names

import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/view/HosptialListView/Widgets/filter_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCareFilter extends StatefulWidget {
  const HomeCareFilter({super.key});

  @override
  State<HomeCareFilter> createState() => _HomeCareFilterState();
}

class _HomeCareFilterState extends State<HomeCareFilter> {
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
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: AppColor.textColor,
                    size: 20,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 5,
                ),
                Text(
                  'Filter DR at Home',
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
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Filter by Specialist',
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
                            text: "Endocrinology",
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
                            text: "Neurologist",
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
                            text: "Dermatologist",
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
                            text: "Pediatrician",
                            textColor: fourth
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
                            fifth = !fifth;
                          });
                        },
                        child: HosptialFilterButton(
                            fillColor: fifth
                                ? AppColor.bgFillColor
                                : Colors.transparent,
                            text: "Psychiatrist",
                            textColor: fifth
                                ? AppColor.whiteColor
                                : AppColor.bgFillColor),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            fifth = !fifth;
                          });
                        },
                        child: HosptialFilterButton(
                            fillColor:
                                six ? AppColor.bgFillColor : Colors.transparent,
                            text: "Gastroenterology",
                            textColor: six
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
                            seven = !seven;
                          });
                        },
                        child: HosptialFilterButton(
                            fillColor: seven
                                ? AppColor.bgFillColor
                                : Colors.transparent,
                            text: "Cardiologist",
                            textColor: seven
                                ? AppColor.whiteColor
                                : AppColor.bgFillColor),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            eight = !eight;
                          });
                        },
                        child: HosptialFilterButton(
                            fillColor: eight
                                ? AppColor.bgFillColor
                                : Colors.transparent,
                            text: "Ophthalmologist",
                            textColor: eight
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
