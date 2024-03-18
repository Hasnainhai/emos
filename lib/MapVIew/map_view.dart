import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/routes/routes_name.dart';
import 'package:emos/view/ClinicView/Widgets/clinic_list_view.dart';
import 'package:emos/view/HosptialListView/Widgets/hosptial_list_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:emos/view/HosptialListView/filter_hosptial.dart';
import 'package:emos/view/HosptialListView/Widgets/owner.dart';

class MapConfigView extends StatefulWidget {
  const MapConfigView({super.key});

  @override
  State<MapConfigView> createState() => _MapConfigViewState();
}

class _MapConfigViewState extends State<MapConfigView> {
  double progress = 0.6;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgFillColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Text(
          "Emergency",
          style: GoogleFonts.getFont(
            "Roboto",
            textStyle: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: AppColor.whiteColor,
            ),
          ),
        ),
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: AppColor.whiteColor,
          size: 24,
        ),
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
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      const TabBar(
                        unselectedLabelColor: AppColor.textColor2,
                        labelColor: AppColor.bgFillColor,
                        indicatorColor: AppColor.textColor2,
                        indicatorPadding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        tabs: [
                          Tab(text: 'List View'),
                          Tab(text: 'Map View'),
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
                                  Text(
                                    "147 Hospital and Clinic Founded",
                                    style: GoogleFonts.getFont(
                                      "Roboto",
                                      textStyle: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: AppColor.textColor2,
                                      ),
                                    ),
                                  ),
                                  const VerticalSpeacing(8),
                                  Row(
                                    children: [
                                      OwnerWidget(
                                          circleColor: const Color(0xff5ABF24),
                                          owner: "79 Government"),
                                      OwnerWidget(
                                          circleColor: const Color(0xffFD586B),
                                          owner: "54 Government"),
                                    ],
                                  ),
                                  const VerticalSpeacing(8),
                                  OwnerWidget(
                                      circleColor: const Color(0xffFEAA48),
                                      owner: "26 Government"),
                                  const VerticalSpeacing(20),
                                  ClinicListView(
                                    fun: () {
                                      Navigator.pushNamed(
                                        context,
                                        RouteName.bookhosptialapointmentview,
                                      );
                                    },
                                  ),
                                  const VerticalSpeacing(20),
                                  HosptialDetail(
                                    fun: () {
                                      Navigator.pushNamed(
                                        context,
                                        RouteName.bookhosptialapointmentview,
                                      );
                                    },
                                  ),
                                  const VerticalSpeacing(20),
                                  HosptialDetail(
                                    fun: () {},
                                  ),
                                  const VerticalSpeacing(20),
                                  ClinicListView(
                                    fun: () {
                                      Navigator.pushNamed(
                                        context,
                                        RouteName.bookhosptialapointmentview,
                                      );
                                    },
                                  ),
                                  const VerticalSpeacing(20),
                                  ClinicListView(
                                    fun: () {
                                      Navigator.pushNamed(
                                        context,
                                        RouteName.bookhosptialapointmentview,
                                      );
                                    },
                                  ),
                                  const VerticalSpeacing(20),
                                  HosptialDetail(
                                    fun: () {},
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
