import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../res/GlobalColors/colors.dart';
import 'widgets/menuFeatureWidget.dart';

class HomeMenuView extends StatelessWidget {
  const HomeMenuView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        title: Text(
          'Menu',
          style: GoogleFonts.getFont(
            "Poppins",
            textStyle: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColor.textColor,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, RouteName.homeView);
              },
              child: Container(
                height: 36.0,
                width: 36.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  border: Border.all(width: 1.0, color: AppColor.dTxtColor),
                ),
                child: const Center(
                  child: Icon(
                    Icons.close,
                    color: AppColor.bgFillColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Divider(color: AppColor.bgFillColor),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              children: [
                const VerticalSpeacing(20.0),
                MenufeatureWidget(
                    title: 'Profile',
                    icon: Icons.person_outline,
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.profileView);
                    }),
                const VerticalSpeacing(20.0),
                const Divider(color: AppColor.bgFillColor),
                const VerticalSpeacing(20.0),
                MenufeatureWidget(
                    title: 'Family Members',
                    icon: Icons.groups_outlined,
                    onTap: () {}),
                const VerticalSpeacing(20.0),
                const Divider(color: AppColor.bgFillColor),
                const VerticalSpeacing(20.0),
                MenufeatureWidget(
                    title: 'Recent Orders',
                    icon: Icons.recent_actors_outlined,
                    onTap: () {}),
                const VerticalSpeacing(20.0),
                const Divider(color: AppColor.bgFillColor),
                const VerticalSpeacing(20.0),
                MenufeatureWidget(
                    title: 'Support',
                    icon: Icons.help_center_outlined,
                    onTap: () {}),
                const VerticalSpeacing(20.0),
                const Divider(color: AppColor.bgFillColor),
                const VerticalSpeacing(20.0),
                MenufeatureWidget(
                    title: 'Invoices',
                    icon: Icons.receipt_long_outlined,
                    onTap: () {}),
                const VerticalSpeacing(20.0),
              ],
            ),
          )
        ],
      ),
    );
  }
}
