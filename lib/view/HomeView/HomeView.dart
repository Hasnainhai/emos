// ignore_for_file: file_names
import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/routes/routes_name.dart';
import 'package:emos/view/HomeView/widgets/homeContainerWiget.dart';
import 'package:emos/view/HomeView/widgets/symptomsWidget.dart';
import 'package:emos/view/HomeView/widgets/topSpeacialistWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../res/GlobalColors/colors.dart';
import 'CustomBottomNavigation/custom_bottomNavigationWidget.dart';
import 'widgets/topHospitalsWidget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final double tHeight = 390.0;
  final double top = 301.0;
  // int _Page = 0;
  final iconList = <IconData>[
    Icons.home,
    Icons.search,
    Icons.account_box,
    Icons.brightness_7,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              _buildCoverBar(),
              Positioned(
                top: MediaQuery.of(context).size.height / 30,
                left: 0.0,
                child: _buildProfile(),
              ),
              Positioned(
                top: tHeight - top / 1.2,
                child: const HomeContainerWidget(),
              ),
            ],
          ),
          const VerticalSpeacing(60.0),
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
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          RouteName.finddoctorview,
                        );
                      },
                      child: Text(
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
                    ),
                  ],
                ),
                const VerticalSpeacing(16.0),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TopSpeacialistCardWidget(
                        fun: () {
                          Navigator.pushNamed(
                            context,
                            RouteName.detaildoctorview,
                          );
                        },
                      ),
                      const SizedBox(width: 16.0),
                      TopSpeacialistCardWidget(
                        fun: () {
                          Navigator.pushNamed(
                            context,
                            RouteName.detaildoctorview,
                          );
                        },
                      ),
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
                      'Top Hospitals',
                      style: GoogleFonts.getFont(
                        "Poppins",
                        textStyle: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: AppColor.textColor,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          RouteName.findhosptialview,
                        );
                      },
                      child: Text(
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
                    ),
                  ],
                ),
                const VerticalSpeacing(16.0),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TopHospitalsCardWidget(
                        fun: () {
                          Navigator.pushNamed(
                            context,
                            RouteName.detailhosptialview,
                          );
                        },
                      ),
                      const SizedBox(width: 16.0),
                      TopHospitalsCardWidget(
                        fun: () {
                          Navigator.pushNamed(
                            context,
                            RouteName.detailhosptialview,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const VerticalSpeacing(32.0),
                Text(
                  'Book a doctor appointment near you\nfor any symptoms',
                  style: GoogleFonts.getFont(
                    "Poppins",
                    textStyle: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                const VerticalSpeacing(16.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SymptomsWidget(
                      img: 'images/dental.png',
                      title: '  Dental\nProblems',
                    ),
                    SymptomsWidget(
                      img: 'images/cold.png',
                      title: 'cold and\n   cough',
                    ),
                    SymptomsWidget(
                      img: 'images/skin.png',
                      title: '     Skin\nProblems',
                    ),
                    SymptomsWidget(
                      img: 'images/menstrual.png',
                      title: 'Menstrual\n  Problems',
                    ),
                  ],
                ),
                const VerticalSpeacing(16.0),
                const Row(
                  children: [
                    SizedBox(width: 10.0),
                    SymptomsWidget(
                      img: 'images/hairfall.png',
                      title: 'Hairfall',
                    ),
                    SizedBox(width: 20.0),
                    SymptomsWidget(
                      img: 'images/headache.png',
                      title: 'Headache',
                    ),
                    SizedBox(width: 20.0),
                    SymptomsWidget(
                      img: 'images/fever.png',
                      title: 'Fever',
                    ),
                  ],
                ),
                const VerticalSpeacing(32.0),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {},
      ),
    );
  }

  _buildCoverBar() {
    return Container(
      height: 390,
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
                'https://www.w3schools.com/howto/img_avatar2.png',
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
            text: 'Rani Singh, \n',
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
}
