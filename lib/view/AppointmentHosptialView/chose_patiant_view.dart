import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/routes/routes_name.dart';
import 'package:emos/view/EmergancyView/Widgets/add_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChosePatiantView extends StatefulWidget {
  const ChosePatiantView({super.key});

  @override
  State<ChosePatiantView> createState() => _ChosePatiantViewState();
}

class _ChosePatiantViewState extends State<ChosePatiantView> {
  bool first = true;
  bool second = false;
  double progress = 0.3; // Set the progress value here

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
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: SingleChildScrollView(
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
                    name: 'Kaixa Pham',
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
                    borderColor:
                        second ? AppColor.bgFillColor : AppColor.textColor2,
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
                VerticalSpeacing(MediaQuery.of(context).size.height / 5.5),
                RoundedButton(
                  title: "Continue",
                  onpress: () {
                    Navigator.pushNamed(
                      context,
                      RouteName.hosptialtabbar,
                    );
                  },
                  bgColor: AppColor.bgFillColor,
                  titleColor: AppColor.simpleBgTextColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
