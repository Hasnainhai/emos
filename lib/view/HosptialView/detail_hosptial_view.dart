import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailHosptialView extends StatelessWidget {
  const DetailHosptialView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20,
                ),
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
                    const SizedBox(
                      width: 100,
                    ),
                    Text(
                      "Hosptial",
                      style: GoogleFonts.getFont(
                        "Roboto",
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColor.blackColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const VerticalSpeacing(20),
              SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/booking.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 1.6,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xff000000).withOpacity(0.1),
                            blurRadius: 40,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Container(
                          height: MediaQuery.of(context).size.width / 1.6,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(6),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 14,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Jonhs Hokins Hospital",
                                      style: GoogleFonts.getFont(
                                        "Roboto",
                                        textStyle: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: AppColor.textColor,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 14,
                                        ),
                                        const SizedBox(
                                          width: 6,
                                        ),
                                        Text(
                                          "4.8",
                                          style: GoogleFonts.getFont(
                                            "Roboto",
                                            textStyle: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: AppColor.bgFillColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Text(
                                  "23 Estean, New York\n City, USA",
                                  style: GoogleFonts.getFont(
                                    "Roboto",
                                    textStyle: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.bgFillColor,
                                    ),
                                  ),
                                ),
                                const VerticalSpeacing(14),
                                const Divider(
                                  color: AppColor.bgFillColor,
                                ),
                                const VerticalSpeacing(12),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.local_hospital_outlined,
                                      color: AppColor.bgFillColor,
                                      size: 14,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "About Hosptial",
                                      style: GoogleFonts.getFont(
                                        "Roboto",
                                        textStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: AppColor.bgFillColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const VerticalSpeacing(10),
                                Text(
                                  "Dr. Gilang is one of the best doctors in the Persahabatan Hospital. He has saved more than 1000 patients in the past 3 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule. ",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.getFont(
                                    "Roboto",
                                    textStyle: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.textColor,
                                    ),
                                  ),
                                ),
                                const VerticalSpeacing(50),
                                RoundedButton(
                                  title: "Back To Home",
                                  onpress: () {
                                    Navigator.pushNamed(
                                        context, RouteName.homeView);
                                  },
                                  bgColor: AppColor.bgFillColor,
                                  titleColor: AppColor.linearBgbuttonColor,
                                )
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
