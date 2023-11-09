import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/routes/routes_name.dart';
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
          SizedBox(
            child: Row(
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
          ),
          CircleAvatar(
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
          // const VerticalSpeacing(20.0),
          // Container(
          //   height: double.infinity,
          //   width: 100,
          //   decoration: const BoxDecoration(
          //     color: AppColor.whiteColor,
          //     borderRadius: BorderRadius.only(
          //       topRight: Radius.circular(50.0),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
