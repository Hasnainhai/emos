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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteName.homeView);
                  },
                  icon: const ImageIcon(
                    AssetImage("images/backicon.png"),
                    color: AppColor.whiteColor,
                  ),
                ),
                const SizedBox(
                  width: 80,
                ),
                Text(
                  "Notification",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColor.whiteColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
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
                        // VerticalSpeacing(20.0),
                        NotificationsWidget(),
                        VerticalSpeacing(10.0),
                        Divider(color: AppColor.bgFillColor),
                        VerticalSpeacing(20.0),
                        NotificationsWidget(),
                        VerticalSpeacing(10.0),
                        Divider(color: AppColor.bgFillColor),
                        VerticalSpeacing(20.0),
                        NotificationsWidget(),
                        VerticalSpeacing(10.0),
                        Divider(color: AppColor.bgFillColor),
                        VerticalSpeacing(20.0),
                        NotificationsWidget(),
                        VerticalSpeacing(10.0),
                        Divider(color: AppColor.bgFillColor),
                        VerticalSpeacing(20.0),
                        NotificationsWidget(),
                        VerticalSpeacing(10.0),
                        Divider(color: AppColor.bgFillColor),
                        VerticalSpeacing(20.0),
                        NotificationsWidget(),
                        VerticalSpeacing(10.0),
                        Divider(color: AppColor.bgFillColor),
                        VerticalSpeacing(20.0),
                        NotificationsWidget(),
                        VerticalSpeacing(10.0),
                        Divider(color: AppColor.bgFillColor),
                        VerticalSpeacing(20.0),
                        NotificationsWidget(),
                        VerticalSpeacing(10.0),
                        Divider(color: AppColor.bgFillColor),
                        VerticalSpeacing(20.0),
                        NotificationsWidget(),
                        VerticalSpeacing(10.0),
                        Divider(color: AppColor.bgFillColor),
                        VerticalSpeacing(20.0),
                        NotificationsWidget(),
                        VerticalSpeacing(10.0),
                        Divider(color: AppColor.bgFillColor)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
