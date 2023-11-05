import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/view/HomeView/widgets/topSpeacialistWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../res/GlobalColors/colors.dart';
import 'widgets/homeFeatureWidget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  final double tHeight = 274.0;
  final double top = 301.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColor.linearBgTextColor,
        elevation: 0.0,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              _buildCoverBar(),
              Positioned(
                top: 10.0,
                left: 0.0,
                child: _buildProfile(),
              ),
              Positioned(
                top: tHeight - top / 2 - 10,
                child: _builProfileContainer(),
              ),
            ],
          ),
          const VerticalSpeacing(180.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Specialist',
                      style: GoogleFonts.getFont(
                        "Poppins",
                        textStyle: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: AppColor.textColor,
                        ),
                      ),
                    ),
                    Text(
                      'View all',
                      style: GoogleFonts.getFont(
                        "Poppins",
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColor.simpleBgbuttonColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const VerticalSpeacing(16.0),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TopSpeacialistCardWidget(),
                      SizedBox(width: 16.0),
                      TopSpeacialistCardWidget(),
                    ],
                  ),
                ),
                const VerticalSpeacing(32.0),
                Container(
                  height: 108,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/banner.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const VerticalSpeacing(32.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Specialist',
                      style: GoogleFonts.getFont(
                        "Poppins",
                        textStyle: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: AppColor.textColor,
                        ),
                      ),
                    ),
                    Text(
                      'View all',
                      style: GoogleFonts.getFont(
                        "Poppins",
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColor.simpleBgbuttonColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const VerticalSpeacing(16.0),
                Container(
                  height: 227.0,
                  width: 258.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      width: 1,
                      color: AppColor.textFieldColor,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 128.0,
                        width: 226.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://images.pexels.com/photos/247786/pexels-photo-247786.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const VerticalSpeacing(16.0),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildCoverBar() {
    return Container(
      height: tHeight,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff2AA39C), Color(0xff2AA39C)],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
    );
  }

  _buildProfile() {
    return Row(
      children: [
        const SizedBox(width: 30.0),
        Stack(
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&q=80&w=1587&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              ),
            ),
            Positioned(
              top: 47.0,
              right: 0,
              child: Container(
                height: 25.0,
                width: 25.0,
                decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(68),
                ),
                child: const Center(
                  child: Icon(
                    Icons.camera_alt_outlined,
                    size: 16,
                    color: AppColor.linearBgTextColor,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 20.0),
        Text.rich(
          TextSpan(
            text: 'Hi Hiren, \n',
            style: GoogleFonts.getFont(
              "Poppins",
              textStyle: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: AppColor.whiteColor,
              ),
            ),
            children: const <TextSpan>[
              TextSpan(
                text: 'Welcome back!',
                style: TextStyle(
                  color: AppColor.hometxtColor,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  _builProfileContainer() {
    return Container(
      height: top,
      width: 350,
      decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(12.0)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 100.0,
                width: 115.0,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: AppColor.textFieldColor,
                      width: 1.0,
                    ),
                    right: BorderSide(
                      color: AppColor.textFieldColor,
                      width: 1.0,
                    ),
                  ),
                ),
                child: const SizedBox(
                  height: 60.0,
                  width: 108.0,
                  child: homeFeatures(
                    img: 'images/hospital.png',
                    name: 'Hospital',
                  ),
                ),
              ),
              Container(
                height: 100.0,
                width: 115.0,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: AppColor.textFieldColor,
                      width: 1.0,
                    ),
                    right: BorderSide(
                      color: AppColor.textFieldColor,
                      width: 1.0,
                    ),
                  ),
                ),
                child: const SizedBox(
                  height: 60.0,
                  width: 108.0,
                  child: homeFeatures(
                    img: 'images/ambulance.png',
                    name: 'Ambulance',
                  ),
                ),
              ),
              Container(
                height: 100.0,
                width: 115.0,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: AppColor.textFieldColor,
                      width: 1.0,
                    ),
                  ),
                ),
                child: const SizedBox(
                  height: 60.0,
                  width: 108.0,
                  child: homeFeatures(
                    img: 'images/clinic.png',
                    name: 'Clinic',
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 100.0,
                width: 115.0,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: AppColor.textFieldColor,
                      width: 1.0,
                    ),
                    right: BorderSide(
                      color: AppColor.textFieldColor,
                      width: 1.0,
                    ),
                  ),
                ),
                child: const SizedBox(
                  height: 60.0,
                  width: 108.0,
                  child: homeFeatures(
                    img: 'images/drHome.png',
                    name: 'Dr at Home',
                  ),
                ),
              ),
              Container(
                height: 100.0,
                width: 115.0,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: AppColor.textFieldColor,
                      width: 1.0,
                    ),
                    right: BorderSide(
                      color: AppColor.textFieldColor,
                      width: 1.0,
                    ),
                  ),
                ),
                child: const SizedBox(
                  height: 60.0,
                  width: 108.0,
                  child: homeFeatures(
                    img: 'images/homeCare.png',
                    name: 'Home Care',
                  ),
                ),
              ),
              Container(
                height: 100.0,
                width: 115.0,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: AppColor.textFieldColor,
                      width: 1.0,
                    ),
                  ),
                ),
                child: const SizedBox(
                  height: 60.0,
                  width: 108.0,
                  child: homeFeatures(
                    img: 'images/labotoryTest.png',
                    name: 'Laboratory\n        Test',
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 100.0,
                width: 115.0,
                decoration: const BoxDecoration(
                  border: Border(
                    // bottom: BorderSide(
                    //   color: AppColor.textFieldColor,
                    //   width: 1.0,
                    // ),
                    right: BorderSide(
                      color: AppColor.textFieldColor,
                      width: 1.0,
                    ),
                  ),
                ),
                child: const SizedBox(
                  height: 60.0,
                  width: 108.0,
                  child: homeFeatures(
                    img: 'images/radiology.png',
                    name: 'Radiology',
                  ),
                ),
              ),
              Container(
                height: 100.0,
                width: 115.0,
                decoration: const BoxDecoration(
                  border: Border(
                    // bottom: BorderSide(
                    //   color: AppColor.textFieldColor,
                    //   width: 1.0,
                    // ),
                    right: BorderSide(
                      color: AppColor.textFieldColor,
                      width: 1.0,
                    ),
                  ),
                ),
                child: const SizedBox(
                  height: 60.0,
                  width: 108.0,
                  child: homeFeatures(
                    img: 'images/pharmacy.png',
                    name: 'Pharmacy\n   (soon)',
                  ),
                ),
              ),
              Container(
                height: 100.0,
                width: 115.0,
                child: const SizedBox(
                  height: 60.0,
                  width: 108.0,
                  child: homeFeatures(
                    img: 'images/others.png',
                    name: 'Other (soon)',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
