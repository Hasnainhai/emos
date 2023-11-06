import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/routes/routes_name.dart';
import 'package:emos/view/HomeView/widgets/homeContainerWiget.dart';
import 'package:emos/view/HomeView/widgets/symptomsWidget.dart';
import 'package:emos/view/HomeView/widgets/topSpeacialistWidget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../res/GlobalColors/colors.dart';
import 'widgets/homeFeatureWidget.dart';
import 'widgets/topHospitalsWidget.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final double tHeight = 374.0;
  final double top = 301.0;
  int _Page = 0;
  final iconList = <IconData>[
    Icons.home,
    Icons.search,
    Icons.add_circle,
    Icons.account_box,
    Icons.brightness_7,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      // resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              _buildCoverBar(),
              Positioned(
                top: 100.0,
                left: 0.0,
                child: _buildProfile(),
              ),
              Positioned(
                top: tHeight - top / 2 - 10,
                child: const HomeContainerWidget(),
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
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TopHospitalsCardWidget(),
                      SizedBox(width: 16.0),
                      TopHospitalsCardWidget(),
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
        currentIndex: _Page,
        onTap: (index) {
          if (index == 2) {
            // Handle the center button tap (index 2) for the emergency problem.
            // You can navigate or perform the necessary action here.
            // Example: Navigator.pushNamed(context, RouteName.emergencyScreen);
          } else {
            setState(() {
              _Page = index;
            });
          }
        },
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
}

class CustomBottomNavigationBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  CustomBottomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  List<bool> isSelected = [
    false,
    false,
    true,
    false,
    false
  ]; // Track selected state

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.home_rounded),
            color:
                isSelected[0] ? AppColor.bgFillColor : AppColor.bottomIconColor,
            onPressed: () {
              widget.onTap(0);
              setState(() {
                isSelected = [true, false, false, false, false];
              });
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.message_rounded,
            ),
            color:
                isSelected[1] ? AppColor.bgFillColor : AppColor.bottomIconColor,
            onPressed: () {
              widget.onTap(1);
              setState(() {
                isSelected = [false, true, false, false, false];
              });
            },
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected[2] ? Colors.redAccent : Colors.red,
            ),
            child: IconButton(
              icon: Icon(
                Icons.wb_twilight_outlined,
                size: 36.0,
                color:
                    isSelected[2] ? AppColor.bgFillColor : AppColor.whiteColor,
              ),
              onPressed: () {
                widget.onTap(2);
                setState(() {
                  isSelected = [false, false, true, false, false];
                });
              },
            ),
          ),
          IconButton(
            icon: Icon(Icons.notifications_outlined),
            color:
                isSelected[3] ? AppColor.bgFillColor : AppColor.bottomIconColor,
            onPressed: () {
              widget.onTap(3);
              setState(() {
                isSelected = [false, false, false, true, false];
              });
            },
          ),
          IconButton(
            icon: const Icon(Icons.menu),
            color:
                isSelected[4] ? AppColor.bgFillColor : AppColor.bottomIconColor,
            onPressed: () {
              widget.onTap(4);
              setState(() {
                isSelected = [false, false, false, false, true];
              });
            },
          ),
        ],
      ),
    );
  }
}
