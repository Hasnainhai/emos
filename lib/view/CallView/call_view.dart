import 'dart:ui';

import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CallView extends StatefulWidget {
  const CallView({super.key});

  @override
  State<CallView> createState() => _CallViewState();
}

class _CallViewState extends State<CallView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "images/booking.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xFF01E9F9).withOpacity(0.1),
                      const Color(0xFF005AFF).withOpacity(0.1),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("images/booking.jpg"),
                    ),
                    const VerticalSpeacing(14),
                    Text(
                      "Jonhs Hokins Hospital",
                      style: GoogleFonts.getFont(
                        "Roboto",
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColor.whiteColor,
                        ),
                      ),
                    ),
                    Text(
                      "Ringing",
                      style: GoogleFonts.getFont(
                        "Roboto",
                        textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.whiteColor,
                        ),
                      ),
                    ),
                    VerticalSpeacing(MediaQuery.of(context).size.height / 2.8),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 48,
                        right: 48,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(
                                  0xffFD586B,
                                )),
                            child: const Icon(
                              Icons.call_end,
                              color: AppColor.whiteColor,
                            ),
                          ),
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: AppColor.textFieldColor)),
                            child: const Icon(
                              Icons.chat_bubble_outline,
                              color: AppColor.whiteColor,
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(
                                  0xff4DDD59,
                                )),
                            child: const Icon(
                              Icons.call,
                              color: AppColor.whiteColor,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
