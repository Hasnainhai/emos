import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../res/GlobalColors/colors.dart';
import '../../routes/routes_name.dart';
import 'widgets/recent_orders_widgets.dart';

class RecentOrdersView extends StatefulWidget {
  const RecentOrdersView({super.key});

  @override
  State<RecentOrdersView> createState() => _RecentOrdersViewState();
}

class _RecentOrdersViewState extends State<RecentOrdersView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgFillColor,
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColor.whiteColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50.0),
            ),
          ),
          child: Column(
            children: [
              const VerticalSpeacing(32.0),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteName.homeMenuView);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: AppColor.textColor,
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Text(
                    'My Orders',
                    style: GoogleFonts.getFont(
                      "Poppins",
                      textStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: AppColor.textColor,
                      ),
                    ),
                  ),
                ],
              ),
              const VerticalSpeacing(24.0),
              // TapBar Here four categories like All orders, Confirmed, Pending, Cancel
              TabBar(
                controller: _tabController,

                tabs: const [
                  Tab(text: 'All Appointments'),
                  Tab(text: 'Payment'),
                  Tab(text: 'Pending'),
                  Tab(text: 'Cancel'),
                ],
                labelColor: AppColor.bgFillColor, // Color when tab is selected
                unselectedLabelColor:
                    AppColor.textColor, // Color when tab is not selected
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: const EdgeInsets.all(8),
                indicator: BoxDecoration(
                  border: Border.all(width: 1, color: AppColor.bgFillColor),
                  borderRadius: BorderRadius.circular(16),
                  color: AppColor
                      .symtomsBgtColor, // Color of the selected tab indicator
                ),
              ),
              const VerticalSpeacing(16.0),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, RouteName.chosepaymentmethodview);
                              },
                              child: const RecentOrdersWidget(
                                  btnBgColor: Color(0xff4DDD59),
                                  btnTxt: 'Payment'),
                            ),
                            const RecentOrdersWidget(
                                btnBgColor: Color(0xffFEAA48),
                                btnTxt: 'Pending'),
                            const RecentOrdersWidget(
                                btnBgColor: Color(0xffFD586B),
                                btnTxt: 'Cancel'),
                            const RecentOrdersWidget(
                                btnBgColor: Color(0xff4DDD59),
                                btnTxt: 'Confirmed'),
                            RoundedButton(
                              title: 'Load More',
                              onpress: () {},
                              bgColor: Colors.transparent,
                              titleColor: AppColor.linearBgTextColor,
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Content for 'Confirmed'
                    // Replace with your widget for 'Confirmed'
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const RecentOrdersWidget(
                                btnBgColor: Color(0xff4DDD59),
                                btnTxt: 'Payment'),
                            const RecentOrdersWidget(
                                btnBgColor: Color(0xff4DDD59),
                                btnTxt: 'Payment'),
                            const RecentOrdersWidget(
                                btnBgColor: Color(0xff4DDD59),
                                btnTxt: 'Payment'),
                            const RecentOrdersWidget(
                                btnBgColor: Color(0xff4DDD59),
                                btnTxt: 'Payment'),
                            RoundedButton(
                              title: 'Load More',
                              onpress: () {},
                              bgColor: Colors.transparent,
                              titleColor: AppColor.linearBgTextColor,
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Content for 'Pending'
                    // Replace with your widget for 'Pending'
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const RecentOrdersWidget(
                                btnBgColor: Color(0xffFEAA48),
                                btnTxt: 'Pending'),
                            const RecentOrdersWidget(
                                btnBgColor: Color(0xffFEAA48),
                                btnTxt: 'Pending'),
                            const RecentOrdersWidget(
                                btnBgColor: Color(0xffFEAA48),
                                btnTxt: 'Pending'),
                            const RecentOrdersWidget(
                                btnBgColor: Color(0xffFEAA48),
                                btnTxt: 'Pending'),
                            RoundedButton(
                              title: 'Load More',
                              onpress: () {},
                              bgColor: Colors.transparent,
                              titleColor: AppColor.linearBgTextColor,
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Content for 'Cancel'
                    // Replace with your widget for 'Cancel'
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const RecentOrdersWidget(
                                btnBgColor: Color(0xffFD586B),
                                btnTxt: 'Cancel'),
                            const RecentOrdersWidget(
                                btnBgColor: Color(0xffFD586B),
                                btnTxt: 'Cancel'),
                            const RecentOrdersWidget(
                                btnBgColor: Color(0xffFD586B),
                                btnTxt: 'Cancel'),
                            const RecentOrdersWidget(
                                btnBgColor: Color(0xffFD586B),
                                btnTxt: 'Cancel'),
                            RoundedButton(
                              title: 'Load More',
                              onpress: () {},
                              bgColor: Colors.transparent,
                              titleColor: AppColor.linearBgTextColor,
                            ),
                          ],
                        ),
                      ),
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
