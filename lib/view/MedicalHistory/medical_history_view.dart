import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/view/MedicalHistory/Widgets/history_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MedicalHistoryView extends StatelessWidget {
  const MedicalHistoryView({super.key});

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
            padding: const EdgeInsets.all(
              20,
            ),
            child: SingleChildScrollView(
              child: Column(
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
                          size: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Medical History",
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
                  const VerticalSpeacing(
                    60,
                  ),
                  HistoryCard(),
                  const VerticalSpeacing(
                    20,
                  ),
                  HistoryCard(),
                  const VerticalSpeacing(
                    20,
                  ),
                  HistoryCard(),
                  const VerticalSpeacing(
                    20,
                  ),
                  HistoryCard(),
                  const VerticalSpeacing(
                    20,
                  ),
                  HistoryCard(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
