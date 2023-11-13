import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/view/RatingView/widgets/rating_complete_popup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingView extends StatefulWidget {
  const RatingView({super.key});

  @override
  State<RatingView> createState() => _RatingViewState();
}

class _RatingViewState extends State<RatingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgFillColor,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        title: Text(
          'Write a Review',
          style: GoogleFonts.getFont(
            "Poppins",
            textStyle: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: AppColor.whiteColor,
            ),
          ),
        ),
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
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RatingBar.builder(
                    initialRating: 4,
                    minRating: 1,
                    allowHalfRating: true,
                    glowColor: Colors.amber,
                    itemCount: 5,
                    itemSize: 30,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 12),
                    itemBuilder: (context, _) => const Icon(
                          Icons.star_rate_rounded,
                          color: Colors.amber,
                        ),
                    onRatingUpdate: (rating) {
                      // countRatingStars = rating;
                    }),
                const VerticalSpeacing(
                  32,
                ),
                Row(
                  children: [
                    Text(
                      "Your Review",
                      style: GoogleFonts.getFont(
                        "Roboto",
                        textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColor.textColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const VerticalSpeacing(12),
                TextField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    hintStyle: GoogleFonts.getFont(
                      "Roboto",
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.bgFillColor,
                      ),
                    ),
                    hintText:
                        'You probably take vitamins and supplements\n with the goal of improving your health. ',
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color:
                            AppColor.bgFillColor, // Use the desired color here
                      ),
                    ),
                  ),
                ),
                const VerticalSpeacing(
                  250,
                ),
                RoundedButton(
                  title: "Submit Review",
                  onpress: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            const RatingCompletePopup());
                  },
                  bgColor: AppColor.bgFillColor,
                  titleColor: AppColor.whiteColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
