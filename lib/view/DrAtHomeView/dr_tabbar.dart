import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/routes/routes_name.dart';
import 'package:emos/view/DrAtHomeView/Widgets/dr_list_view.dart';
import 'package:emos/view/HosptialListView/filter_hosptial.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrTabBarView extends StatefulWidget {
  const DrTabBarView({super.key});

  @override
  State<DrTabBarView> createState() => _ClinicTabBarState();
}

class _ClinicTabBarState extends State<DrTabBarView> {
  double progress = 0.6; // Set the progress value here

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
                        "Step 2 of 3: Choose Doctor",
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
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  const FilterHosptialPopup());
                        },
                        child: const Icon(
                          Icons.format_list_bulleted_sharp,
                          color: AppColor.textColor,
                          size: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            RouteName.hosptialsearchview,
                          );
                        },
                        child: const Icon(
                          Icons.search,
                          color: AppColor.textColor,
                          size: 20,
                        ),
                      ),
                    ],
                  )
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
              const VerticalSpeacing(30.0),
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      const TabBar(
                        unselectedLabelColor: AppColor.textColor2,
                        labelColor: AppColor.bgFillColor,
                        indicatorColor: AppColor.textColor2,
                        indicatorPadding: EdgeInsets.only(
                          left: 60,
                          right: 60,
                        ),
                        tabs: [
                          Tab(text: 'List View'),
                          Tab(text: 'Doctor View'),
                        ],
                      ),
                      const VerticalSpeacing(30),
                      Expanded(
                        child: TabBarView(
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const VerticalSpeacing(20),
                                  DrListView(
                                    fun: () {
                                      Navigator.pushNamed(
                                        context,
                                        RouteName.bookhosptialapointmentview,
                                      );
                                    },
                                  ),
                                  const VerticalSpeacing(20),
                                  DrListView(
                                    fun: () {
                                      Navigator.pushNamed(
                                        context,
                                        RouteName.bookhosptialapointmentview,
                                      );
                                    },
                                  ),
                                  const VerticalSpeacing(20),
                                  DrListView(
                                    fun: () {
                                      Navigator.pushNamed(
                                        context,
                                        RouteName.bookhosptialapointmentview,
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            const Center(
                              child: Text("Here is Map"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
