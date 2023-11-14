import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClinicListView extends StatelessWidget {
  const ClinicListView({super.key, required this.fun});
  final Function() fun;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: (MediaQuery.of(context).size.height / 3),
          width: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              16,
            ),
            border: Border.all(color: AppColor.textColor2),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    height: 72,
                    width: 72,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                      image: const DecorationImage(
                        image: AssetImage(
                          "images/booking.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jonhs Hokins Clinic",
                        style: GoogleFonts.getFont(
                          "Roboto",
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppColor.textColor,
                          ),
                        ),
                      ),
                      const VerticalSpeacing(6),
                      Text(
                        "23 Estean, New York City, USA",
                        style: GoogleFonts.getFont(
                          "Roboto",
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.bgFillColor,
                          ),
                        ),
                      ),
                      const VerticalSpeacing(6),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 14,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "4.8 (456 Reviews)",
                            style: GoogleFonts.getFont(
                              "Roboto",
                              textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColor.bgFillColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 12,
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.av_timer_rounded,
                      color: AppColor.textFieldColor,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Working From 08:30 AM to 04:30 PM",
                      style: GoogleFonts.getFont(
                        "Roboto",
                        textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.bgFillColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 12, bottom: 8),
                child: Row(
                  children: [
                    const Icon(
                      Icons.send,
                      color: AppColor.textFieldColor,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "2.5 Km from your location",
                      style: GoogleFonts.getFont(
                        "Roboto",
                        textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.bgFillColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                ),
                child: RoundedButton(
                  title: "Book an Appointment",
                  onpress: fun,
                  bgColor: Colors.transparent,
                  titleColor: AppColor.bgFillColor,
                ),
              ),
              const VerticalSpeacing(20),
            ],
          ),
        ),
      ],
    );
  }
}
