import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/routes/routes_name.dart';
import 'package:emos/view/HosptialListView/Widgets/clander.dart';
import 'package:emos/view/HosptialListView/Widgets/selected_hosptial_card.dart';
import 'package:emos/view/HosptialListView/Widgets/time_container.dart';
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
  bool time1 = false;
  bool time2 = false;

  bool time3 = false;

  bool time4 = false;

  bool time5 = false;

  bool time6 = false;

  bool time7 = false;

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
          child: SingleChildScrollView(
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
                    valueColor: const AlwaysStoppedAnimation<Color>(
                        AppColor.bgFillColor),
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
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Calander(
                        day: 'Mon',
                        date: '1',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Tue',
                        date: '2',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Wed',
                        date: '3',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Thu',
                        date: '4',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Fri',
                        date: '5',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Sat',
                        date: '6',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Sun',
                        date: '7',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Mon',
                        date: '8',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Tue',
                        date: '9',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Wed',
                        date: '10',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Thu',
                        date: '11',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Fri',
                        date: '12',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Sat',
                        date: '13',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Sun',
                        date: '14',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Mon',
                        date: '15',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Tue',
                        date: '16',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Wed',
                        date: '17',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Thu',
                        date: '18',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Fri',
                        date: '19',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Sat',
                        date: '20',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Sun',
                        date: '21',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Mon',
                        date: '22',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Tue',
                        date: '23',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Wed',
                        date: '24',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Thu',
                        date: '25',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Fri',
                        date: '26',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Sat',
                        date: '27',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Sun',
                        date: '28',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Mon',
                        date: '29',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Tue',
                        date: '30',
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Calander(
                        day: 'Wed',
                        date: '31',
                      ),
                    ],
                  ),
                ),
                const VerticalSpeacing(24),
                Text(
                  "Visiting Hours",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                const VerticalSpeacing(12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TimeContainer(
                      time: "8:00 AM - 9:00 AM",
                      bgColor:
                          time1 ? AppColor.bgFillColor : Colors.transparent,
                      textColor:
                          time1 ? AppColor.whiteColor : AppColor.bgFillColor,
                      ontap: () {
                        setState(() {
                          time1 = !time1;
                          time2 = false;
                          time3 = false;

                          time4 = false;

                          time5 = false;

                          time6 = false;

                          time7 = false;
                        });
                      },
                    ),
                    TimeContainer(
                      time: "9:00 AM - 10:00 AM",
                      bgColor:
                          time2 ? AppColor.bgFillColor : Colors.transparent,
                      textColor:
                          time2 ? AppColor.whiteColor : AppColor.bgFillColor,
                      ontap: () {
                        setState(() {
                          time2 = !time2;
                          time1 = false;
                          time3 = false;

                          time4 = false;

                          time5 = false;

                          time6 = false;

                          time7 = false;
                        });
                      },
                    ),
                  ],
                ),
                const VerticalSpeacing(12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TimeContainer(
                      time: "10:00 AM - 11:00 AM",
                      bgColor:
                          time3 ? AppColor.bgFillColor : Colors.transparent,
                      textColor:
                          time3 ? AppColor.whiteColor : AppColor.bgFillColor,
                      ontap: () {
                        setState(() {
                          time2 = false;
                          time1 = false;
                          time3 = !time3;

                          time4 = false;

                          time5 = false;

                          time6 = false;

                          time7 = false;
                        });
                      },
                    ),
                    TimeContainer(
                      time: "11:00 AM - 12:00 AM",
                      bgColor:
                          time4 ? AppColor.bgFillColor : Colors.transparent,
                      textColor:
                          time4 ? AppColor.whiteColor : AppColor.bgFillColor,
                      ontap: () {
                        setState(() {
                          time2 = false;
                          time1 = false;
                          time3 = false;

                          time4 = !time4;

                          time5 = false;

                          time6 = false;

                          time7 = false;
                        });
                      },
                    ),
                  ],
                ),
                const VerticalSpeacing(12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TimeContainer(
                      time: "2:00 PM - 3:00 PM",
                      bgColor:
                          time5 ? AppColor.bgFillColor : Colors.transparent,
                      textColor:
                          time5 ? AppColor.whiteColor : AppColor.bgFillColor,
                      ontap: () {
                        setState(() {
                          time2 = false;
                          time1 = false;
                          time3 = false;

                          time4 = false;

                          time5 = !time5;

                          time6 = false;

                          time7 = false;
                        });
                      },
                    ),
                    TimeContainer(
                      time: "3:00 PM - 4:00 PM",
                      bgColor:
                          time6 ? AppColor.bgFillColor : Colors.transparent,
                      textColor:
                          time6 ? AppColor.whiteColor : AppColor.bgFillColor,
                      ontap: () {
                        setState(() {
                          time2 = false;
                          time1 = false;
                          time3 = false;

                          time4 = false;

                          time5 = false;

                          time6 = !time6;

                          time7 = false;
                        });
                      },
                    ),
                  ],
                ),
                const VerticalSpeacing(12),
                TimeContainer(
                  time: "4:00 PM - 5:00 PM",
                  bgColor: time7 ? AppColor.bgFillColor : Colors.transparent,
                  textColor: time7 ? AppColor.whiteColor : AppColor.bgFillColor,
                  ontap: () {
                    setState(() {
                      time2 = false;
                      time1 = false;
                      time3 = false;

                      time4 = false;

                      time5 = false;

                      time6 = false;

                      time7 = !time7;
                    });
                  },
                ),
                const VerticalSpeacing(40),
                const Divider(
                  color: AppColor.bgFillColor,
                ),
                const VerticalSpeacing(12),
                RoundedButton(
                  title: "Continue",
                  onpress: () {
                    _showRequestPopup(context);
                  },
                  bgColor: AppColor.bgFillColor,
                  titleColor: AppColor.whiteColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showRequestPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Request has been placed'),
          content: const Text('Would you like to view your booking?'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundedButton(
                  title: 'View Booking',
                  onpress: () {
                    Navigator.pushNamed(context, RouteName.recentOrdersview);
                  },
                  bgColor: AppColor.bgFillColor,
                  titleColor: AppColor.whiteColor),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundedButton(
                  title: 'Cancel',
                  onpress: () {},
                  bgColor: AppColor.bgFillColor,
                  titleColor: AppColor.whiteColor),
            ),
          ],
        );
      },
    );
  }
}
