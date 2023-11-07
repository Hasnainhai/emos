import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/view/HosptialListView/Widgets/clander.dart';
import 'package:emos/view/HosptialListView/Widgets/selected_hosptial_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookHosptialApointmentView extends StatefulWidget {
  const BookHosptialApointmentView({super.key});

  @override
  State<BookHosptialApointmentView> createState() =>
      _BookHosptialApointmentViewState();
}

class _BookHosptialApointmentViewState
    extends State<BookHosptialApointmentView> {
  double progress = 1.0; // Set the progress value here
  String selectedMonth = 'January'; // Initial value
  List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
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
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VerticalSpeacing(30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          size: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Step 3 of 3: Choose Date & Time",
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
                ],
              ),
              const VerticalSpeacing(30.0),
              SizedBox(
                width: double.infinity,
                child: LinearProgressIndicator(
                  value: progress,
                  minHeight: 2,
                  backgroundColor: AppColor.textColor2,
                  valueColor:
                      const AlwaysStoppedAnimation<Color>(AppColor.bgFillColor),
                ),
              ),
              const VerticalSpeacing(24.0),
              const SelectedHosptialCard(),
              const VerticalSpeacing(24.0),
              const Divider(
                color: AppColor.bgFillColor,
              ),
              const VerticalSpeacing(24.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Schedule",
                    style: GoogleFonts.getFont(
                      "Roboto",
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColor.textColor,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          icon: const Icon(
                            Icons.arrow_drop_down_sharp,
                            color: AppColor.textColor,
                          ),
                          style: GoogleFonts.getFont(
                            "Roboto",
                            textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColor.bgFillColor,
                            ),
                          ),
                          value: selectedMonth,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedMonth = newValue!;
                            });
                          },
                          items: months
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text("${value}2023"),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Calander(),
            ],
          ),
        ),
      ),
    );
  }
}
