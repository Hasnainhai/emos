import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/view/HosptialListView/Widgets/filter_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterHosptialPopup extends StatefulWidget {
  const FilterHosptialPopup({super.key});

  @override
  State<FilterHosptialPopup> createState() => _FilterHosptialPopupState();
}

class _FilterHosptialPopupState extends State<FilterHosptialPopup> {
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
                    'Filter Hospital',
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
                            text: "Multi-Specialty ",
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
                            text: "General",
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
                            text: "Pediatrics",
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
                            text: "Orthopedics",
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
                        text: "Multi-Specialty ",
                        textColor:
                            fifth ? AppColor.whiteColor : AppColor.bgFillColor),
                  ),
                  const VerticalSpeacing(16),
                  const Divider(
                    color: AppColor.bgFillColor,
                  ),
                  const VerticalSpeacing(16),
                  Text(
                    'Mediclaim ',
                    style: GoogleFonts.getFont(
                      "Roboto",
                      textStyle: const TextStyle(
                        fontSize: 20,
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
                            six = !six;
                          });
                        },
                        child: HosptialFilterButton(
                            fillColor:
                                six ? AppColor.bgFillColor : Colors.transparent,
                            text: "Reimbursement",
                            textColor: six
                                ? AppColor.whiteColor
                                : AppColor.bgFillColor),
                      ),
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
                            text: "Cashless",
                            textColor: seven
                                ? AppColor.whiteColor
                                : AppColor.bgFillColor),
                      ),
                    ],
                  ),
                  // const VerticalSpeacing(16),
                  // InkWell(
                  //   onTap: () {
                  //     setState(() {
                  //       eight = !eight;
                  //     });
                  //   },
                  //   child: HosptialFilterButton(
                  //       fillColor:
                  //           eight ? AppColor.bgFillColor : Colors.transparent,
                  //       text: "Insurance",
                  //       textColor:
                  //           eight ? AppColor.whiteColor : AppColor.bgFillColor),
                  // ),
                  const VerticalSpeacing(16),
                  Container(
                    height: 56,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: AppColor.textFieldColor,
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 16.0,
                        right: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.wallet,
                                color: AppColor.textColor,
                                size: 24,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Cashless ',
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
                                '(15)',
                                style: GoogleFonts.getFont(
                                  "Roboto",
                                  textStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: AppColor.textColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '>',
                            style: GoogleFonts.getFont(
                              "Roboto",
                              textStyle: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                color: AppColor.textColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  VerticalSpeacing(MediaQuery.of(context).size.width / 3),
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
