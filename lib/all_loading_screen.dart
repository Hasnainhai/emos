import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllLoadingScreen extends StatefulWidget {
  const AllLoadingScreen(
      {super.key, required this.text, required this.image, required this.root});
  final String text;
  final String image;
  final String root;

  @override
  State<AllLoadingScreen> createState() => _AllLoadingScreenState();
}

class _AllLoadingScreenState extends State<AllLoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "images/bg.png",
                  ),
                  fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const VerticalSpeacing(300.0),
                Image.asset(
                  "images/loadinglogo.png",
                  height: 75,
                  width: 190,
                ),
                Text(
                  widget.text,
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColor.dTxtColor,
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    if (widget.root == "hospital") {
                      Navigator.pushNamed(
                        context,
                        RouteName.hosptialtabbar,
                      );
                    } else if (widget.root == "ambulance") {
                      Navigator.pushNamed(
                        context,
                        RouteName.ambulanceScreen,
                      );
                    } else if (widget.root == "clinic") {
                      Navigator.pushNamed(
                        context,
                        RouteName.clinictabbar,
                      );
                    }
                  },
                  child: SizedBox(
                    height: 60.0,
                    width: 60.0,
                    child: Material(
                      elevation: 4.0, // Set the elevation here
                      shape: const CircleBorder(),
                      clipBehavior: Clip.hardEdge,
                      color: AppColor.whiteColor,
                      child: Center(
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            border: Border.all(
                                width: 2.0, color: AppColor.textColor2),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset(widget.image),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const VerticalSpeacing(100.0),
              ],
            )),
      ),
    );
  }
}
