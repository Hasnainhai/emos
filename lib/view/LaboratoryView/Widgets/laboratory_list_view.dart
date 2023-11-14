import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaboratoryListView extends StatelessWidget {
  const LaboratoryListView({super.key, required this.fun});
  final Function() fun;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: (MediaQuery.of(context).size.height / 3) - 2.4,
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
                        color: AppColor.textFieldColor),
                    child: Center(
                      child: Image.asset(
                        "images/labotoryTest.png",
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jonhs Hokins Laboratory",
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.attach_money_sharp,
                          color: AppColor.textFieldColor,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Consultant Fees:",
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
                    Container(
                      height: 20,
                      width: 50,
                      decoration: BoxDecoration(
                        color: AppColor.bgFillColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          "₹350",
                          style: GoogleFonts.getFont(
                            "Roboto",
                            textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColor.whiteColor,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
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
                      Icons.location_on_outlined,
                      color: AppColor.textFieldColor,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Distance:",
                      style: GoogleFonts.getFont(
                        "Roboto",
                        textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColor.textColor,
                        ),
                      ),
                    ),
                    Text(
                      "2 Km from your location",
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
                  top: 12,
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.home_filled,
                      color: AppColor.textFieldColor,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Collect home sample:",
                      style: GoogleFonts.getFont(
                        "Roboto",
                        textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColor.textColor,
                        ),
                      ),
                    ),
                    Text(
                      "YES",
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
              const VerticalSpeacing(20),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.mapView);
                    },
                    child: Container(
                      height: 46,
                      width: MediaQuery.of(context).size.width / 2 - 21,
                      decoration: const BoxDecoration(
                        color: Color(0xff5790B9),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                        ),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.send,
                          color: AppColor.whiteColor,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        RouteName.callview,
                      );
                    },
                    child: Container(
                      height: 46,
                      width: MediaQuery.of(context).size.width / 2 - 21,
                      decoration: const BoxDecoration(
                        color: Color(0xff5ABF24),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.phone,
                          color: AppColor.whiteColor,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
