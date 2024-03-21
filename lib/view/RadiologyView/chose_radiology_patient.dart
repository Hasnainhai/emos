import 'dart:ui';

import 'package:emos/all_loading_screen.dart';
import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/routes/routes_name.dart';
import 'package:emos/view/EmergancyView/Widgets/add_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadiologyChosePatientView extends StatefulWidget {
  const RadiologyChosePatientView({super.key});

  @override
  State<RadiologyChosePatientView> createState() =>
      _RadiologyChosePatientViewState();
}

class _RadiologyChosePatientViewState extends State<RadiologyChosePatientView> {
  bool first = true;
  bool second = false;
  double progress = 0.3; // Set the progress value here
  bool showSheet = false;
  bool isSheetVisible = true;
  bool isvisible = false;
  void toggleSheetVisibility() {
    setState(() {
      isSheetVisible = !isSheetVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.bgFillColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          automaticallyImplyLeading: false,
        ),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50.0),
              ),
            ),
            child: Stack(
              children: [
                AnimatedOpacity(
                  onEnd: toggleSheetVisibility,
                  opacity: showSheet ? 0.6 : 0.0,
                  duration: const Duration(milliseconds: 300),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    decoration: const BoxDecoration(),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const VerticalSpeacing(30.0),
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
                                "Step 1 of 3: Choose Radiology",
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
                            "Chose Patient",
                            style: GoogleFonts.getFont(
                              "Roboto",
                              textStyle: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: AppColor.textColor,
                              ),
                            ),
                          ),
                          // const VerticalSpeacing(5.0),
                          Text(
                            "Selection of family members",
                            style: GoogleFonts.getFont(
                              "Roboto",
                              textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColor.bgFillColor,
                              ),
                            ),
                          ),
                          const VerticalSpeacing(16.0),
                          InkWell(
                            onTap: () {
                              setState(() {
                                first = !first;
                                second = false;
                              });
                            },
                            child: AddCard(
                              name: 'Dummy',
                              dob: '21-09-1995',
                              person: 'Yourself',
                              borderColor: first == true
                                  ? AppColor.bgFillColor
                                  : AppColor.textColor2,
                            ),
                          ),
                          const VerticalSpeacing(16.0),
                          InkWell(
                            onTap: () {
                              setState(() {
                                second = !second;
                                first = false;
                              });
                            },
                            child: AddCard(
                              name: 'Stephen Chow',
                              dob: '12-11-1990',
                              person: 'Brother',
                              borderColor: second
                                  ? AppColor.bgFillColor
                                  : AppColor.textColor2,
                            ),
                          ),
                          const VerticalSpeacing(16.0),
                          RoundedButton(
                            title: 'Add New Depedent',
                            onpress: () {
                              Navigator.pushNamed(
                                context,
                                RouteName.adddependetview,
                              );
                            },
                            bgColor: Colors.transparent,
                            titleColor: AppColor.bgFillColor,
                          ),
                          const VerticalSpeacing(16),
                          RoundedButton(
                            title: "Continue",
                            onpress: () {
                              if (second == true) {
                                setState(() {
                                  isvisible = true;
                                  showSheet = true;
                                });
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (c) => const AllLoadingScreen(
                                      text: "Searching Radiology ...",
                                      image: "images/radiology.png",
                                      root: "radiology",
                                    ),
                                  ),
                                );
                              }
                            },
                            bgColor: AppColor.bgFillColor,
                            titleColor: AppColor.simpleBgTextColor,
                          ),
                          const VerticalSpeacing(80),
                        ],
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: isvisible,
                  child: DraggableScrollableSheet(
                    initialChildSize: 0.15,
                    minChildSize: 0.03,
                    maxChildSize: 0.15,
                    builder: (BuildContext context,
                        ScrollController scrollController) {
                      return GestureDetector(
                        onTap: () => toggleSheetVisibility,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: AppColor.whiteColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(32),
                              topRight: Radius.circular(32),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 8,
                            ),
                            child: SingleChildScrollView(
                              controller: scrollController,
                              child: Column(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 6,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: AppColor.chatRecvColor,
                                    ),
                                  ),
                                  const VerticalSpeacing(20),
                                  InkWell(
                                    onTap: () {
                                      // Navigator.pop(context);
                                      setState(() {
                                        showSheet = false;
                                      });
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const ImageIcon(
                                          AssetImage("images/whatapp.png"),
                                          color: AppColor.textColor,
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          "Getting location with WhatsApp",
                                          style: GoogleFonts.getFont(
                                            "Roboto",
                                            textStyle: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: AppColor.textColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const VerticalSpeacing(10),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            )));
  }
}
