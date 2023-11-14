import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/download_popup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../components/VerticalSpacing/vertical_spacing.dart';
import '../../res/GlobalColors/colors.dart';
import '../../routes/routes_name.dart';
import 'widgets/invoices_card_widget.dart';

class InvoicesView extends StatefulWidget {
  const InvoicesView({super.key});

  @override
  State<InvoicesView> createState() => _InvoicesViewState();
}

class _InvoicesViewState extends State<InvoicesView>
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
                    'Invoices',
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
              // TapBar Here four categories like All Invoices, Clinic, Dr at Home, Homecare
              TabBar(
                controller: _tabController,

                tabs: const [
                  Tab(text: 'All Invoices'),
                  Tab(text: 'Clinic'),
                  Tab(text: 'Dr at Home'),
                  Tab(text: 'HomeCare'),
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
                    // Content for 'All Invoices'
                    // Replace with your widget for 'All Orders'
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            InvoicesCardWidget(
                              img: 'images/clinic.png',
                              title: 'Clinic Name',
                              price: '\$500',
                              payment: 'Payment at clinic',
                              ontap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        const DownloadPopup());
                              },
                            ),
                            InvoicesCardWidget(
                              img: 'images/drHome.png',
                              title: 'Dr Name',
                              price: '\$300',
                              payment: 'Master Card',
                              ontap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        const DownloadPopup());
                              },
                            ),
                            InvoicesCardWidget(
                              img: 'images/homeCare.png',
                              title: 'Home Care Name',
                              price: '\$100',
                              payment: 'Debet Card',
                              ontap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        const DownloadPopup());
                              },
                            ),
                            InvoicesCardWidget(
                              img: 'images/clinic.png',
                              title: 'Clinic Name',
                              price: '\$500',
                              payment: 'Payment at clinic',
                              ontap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        const DownloadPopup());
                              },
                            ),
                            RoundedButton(
                              title: 'Load More',
                              onpress: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        const DownloadPopup());
                              },
                              bgColor: Colors.transparent,
                              titleColor: AppColor.linearBgTextColor,
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Content for 'Clinic'
                    // Replace with your widget for 'Clinic'
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            InvoicesCardWidget(
                              img: 'images/clinic.png',
                              title: 'Clinic Name',
                              price: '\$500',
                              payment: 'Payment at clinic',
                              ontap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        const DownloadPopup());
                              },
                            ),
                            InvoicesCardWidget(
                              img: 'images/clinic.png',
                              title: 'Clinic Name',
                              price: '\$500',
                              payment: 'Payment at clinic',
                              ontap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        const DownloadPopup());
                              },
                            ),
                            InvoicesCardWidget(
                              img: 'images/clinic.png',
                              title: 'Clinic Name',
                              price: '\$500',
                              payment: 'Payment at clinic',
                              ontap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        const DownloadPopup());
                              },
                            ),
                            InvoicesCardWidget(
                              img: 'images/clinic.png',
                              title: 'Clinic Name',
                              price: '\$500',
                              payment: 'Payment at clinic',
                              ontap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        const DownloadPopup());
                              },
                            ),
                            RoundedButton(
                              title: 'Load More',
                              onpress: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        const DownloadPopup());
                              },
                              bgColor: Colors.transparent,
                              titleColor: AppColor.linearBgTextColor,
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Content for 'Dr Home'
                    // Replace with your widget for 'Dr Home'
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            InvoicesCardWidget(
                              img: 'images/drHome.png',
                              title: 'Dr Name',
                              price: '\$300',
                              payment: 'Master Card',
                              ontap: () {},
                            ),
                            InvoicesCardWidget(
                              img: 'images/drHome.png',
                              title: 'Dr Name',
                              price: '\$300',
                              payment: 'Master Card',
                              ontap: () {},
                            ),
                            InvoicesCardWidget(
                              img: 'images/drHome.png',
                              title: 'Dr Name',
                              price: '\$300',
                              payment: 'Master Card',
                              ontap: () {},
                            ),
                            InvoicesCardWidget(
                              img: 'images/drHome.png',
                              title: 'Dr Name',
                              price: '\$300',
                              payment: 'Master Card',
                              ontap: () {},
                            ),
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

                    // Content for 'HomeCare'
                    // Replace with your widget for 'HomeCare'
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            InvoicesCardWidget(
                              img: 'images/homeCare.png',
                              title: 'Home Care Name',
                              price: '\$100',
                              payment: 'Debet Card',
                              ontap: () {},
                            ),
                            InvoicesCardWidget(
                              img: 'images/homeCare.png',
                              title: 'Home Care Name',
                              price: '\$100',
                              payment: 'Debet Card',
                              ontap: () {},
                            ),
                            InvoicesCardWidget(
                              img: 'images/homeCare.png',
                              title: 'Home Care Name',
                              price: '\$100',
                              payment: 'Debet Card',
                              ontap: () {},
                            ),
                            InvoicesCardWidget(
                              img: 'images/homeCare.png',
                              title: 'Home Care Name',
                              price: '\$100',
                              payment: 'Debet Card',
                              ontap: () {},
                            ),
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
