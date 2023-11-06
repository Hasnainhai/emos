import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../components/VerticalSpacing/vertical_spacing.dart';
import '../../../components/coustem_text_field/coustem_text_field.dart';
import '../../../res/GlobalColors/colors.dart';

class HosptialSearchView extends StatelessWidget {
  const HosptialSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgFillColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
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
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VerticalSpeacing(32.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Search Hosptial",
                      style: GoogleFonts.getFont(
                        "Roboto",
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColor.textColor,
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.cancel_rounded,
                          color: AppColor.bgFillColor,
                        ))
                  ],
                ),
                const VerticalSpeacing(32.0),
                const TextFieldCustom(
                  enablePrefixIcon: true,
                  maxLines: 1,
                  icon: Icons.search,
                  hintText: 'Search Here',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
