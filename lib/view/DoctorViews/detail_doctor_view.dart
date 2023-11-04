import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailDoctorView extends StatelessWidget {
  const DetailDoctorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColor.blackColor,
            size: 18,
          ),
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          "Dr. Shruti Kedia",
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
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/doctor_bg.png"),
                ),
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
                        Text(
                          "Dr. Edward Jenner",
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
                          "Endocrinology",
                          style: GoogleFonts.getFont(
                            "Roboto",
                            textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.bgFillColor,
                            ),
                          ),
                        ),
                        const VerticalSpeacing(14),
                        Row(
                          children: [
                            const Icon(
                              Icons.language,
                              color: AppColor.bgFillColor,
                              size: 14,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Languages:",
                              style: GoogleFonts.getFont(
                                "Roboto",
                                textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.bgFillColor,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "English, Hindi",
                              style: GoogleFonts.getFont(
                                "Roboto",
                                textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.textColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const VerticalSpeacing(10),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: AppColor.bgFillColor,
                              size: 14,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Location:",
                              style: GoogleFonts.getFont(
                                "Roboto",
                                textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.bgFillColor,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "23 Estean, New York City, USA",
                              style: GoogleFonts.getFont(
                                "Roboto",
                                textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.textColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const VerticalSpeacing(10),
                        Row(
                          children: [
                            const Icon(
                              Icons.account_circle_outlined,
                              color: AppColor.bgFillColor,
                              size: 14,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Degrees:",
                              style: GoogleFonts.getFont(
                                "Roboto",
                                textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.bgFillColor,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Master’s degree, Endocrinology",
                              style: GoogleFonts.getFont(
                                "Roboto",
                                textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.textColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const VerticalSpeacing(12),
                        const Divider(
                          color: AppColor.bgFillColor,
                        ),
                        const VerticalSpeacing(12),
                        Row(
                          children: [
                            const Icon(
                              Icons.work_outline_outlined,
                              color: AppColor.bgFillColor,
                              size: 14,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Work Experience",
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
                          onpress: () {},
                          bgColor: AppColor.bgFillColor,
                          titleColor: AppColor.linearBgbuttonColor,
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ),
      )),
    );
  }
}
