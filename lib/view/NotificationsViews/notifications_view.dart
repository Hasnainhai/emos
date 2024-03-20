import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/notificationsWidget.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgFillColor,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, RouteName.homeView);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: AppColor.whiteColor,
            )),
        title: Text(
          "Notification",
          style: GoogleFonts.getFont(
            "Roboto",
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColor.whiteColor,
            ),
          ),
        ),
        centerTitle: true,
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
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: const [
              Column(
                children: [
                  VerticalSpeacing(20.0),
                  NotificationsWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  NotificationsWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  NotificationsWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  NotificationsWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  NotificationsWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  NotificationsWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  NotificationsWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  NotificationsWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  NotificationsWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor),
                  VerticalSpeacing(20.0),
                  NotificationsWidget(),
                  VerticalSpeacing(10.0),
                  Divider(color: AppColor.blackColor)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
