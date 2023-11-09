import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/routes/routes_name.dart';
import 'package:emos/view/ProfileView/widgets/profileWidget_features.dart';
import 'package:emos/view/ProfileView/widgets/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgFillColor,
      body: Column(
        children: [
          const VerticalSpeacing(50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteName.homeView);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: AppColor.whiteColor,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit_outlined,
                  color: AppColor.whiteColor,
                ),
              ),
            ],
          ),
          const CircleAvatar(
            radius: 60.0,
            backgroundImage: NetworkImage(
              'https://www.w3schools.com/howto/img_avatar2.png',
            ),
          ),
          const VerticalSpeacing(12.0),
          Text(
            'Rani Singh',
            style: GoogleFonts.getFont(
              "Poppins",
              textStyle: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: AppColor.whiteColor,
              ),
            ),
          ),
          const VerticalSpeacing(20.0),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50.0),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      VerticalSpeacing(16.0),
                      ProfileWidget(
                          icon: Icons.person_outline,
                          title: 'Name',
                          subtitle: 'Rani Singhs'),
                      VerticalSpeacing(5.0),
                      Divider(color: AppColor.textColor2),
                      ProfileWidget(
                          icon: Icons.mail_outline_rounded,
                          title: 'Email',
                          subtitle: 'Rani@gmail.com'),
                      VerticalSpeacing(5.0),
                      Divider(color: AppColor.textColor2),
                      ProfileWidget(
                          icon: Icons.phone_outlined,
                          title: 'Phone Number',
                          subtitle: '+1234462456754'),
                      VerticalSpeacing(5.0),
                      Divider(color: AppColor.textColor2),
                      ProfileWidget(
                          icon: Icons.location_on_outlined,
                          title: 'Address',
                          subtitle: '23 Karachi City, Ancholi,New Block'),
                      VerticalSpeacing(5.0),
                      Divider(color: AppColor.textColor2),
                      ProfileWidget(
                          icon: Icons.calendar_month_outlined,
                          title: 'Date of Birth',
                          subtitle: '10/11/1999'),
                      VerticalSpeacing(5.0),
                      Divider(color: AppColor.textColor2),
                      ProfileWidget(
                          icon: Icons.monitor_weight_outlined,
                          title: 'Weight',
                          subtitle: '60 Kg'),
                      VerticalSpeacing(5.0),
                      Divider(color: AppColor.textColor2),
                      ProfileWidget(
                          icon: Icons.height_outlined,
                          title: 'Height',
                          subtitle: '183 Cm'),
                      VerticalSpeacing(58.0),
                      ProfileWidgetFeatures(
                          icon: Icons.coronavirus_outlined, title: 'Allergy'),
                      VerticalSpeacing(18.0),
                      ProfileWidgetFeatures(
                          icon: Icons.history, title: 'Medical History'),
                      VerticalSpeacing(36.0),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
