import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/RoundedButton/rounded_button.dart';
import '../../components/cardFieldCustom/card_field_custom.dart';

class AddCardView extends StatelessWidget {
  const AddCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColor.whiteColor,
            size: 18,
          ),
        ),
        title: Text(
          "Step 1 of 3: Choose Doctor",
          style: GoogleFonts.getFont(
            "Roboto",
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColor.whiteColor,
            ),
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: AppColor.bgFillColor,
      body: Stack(
        children: [
          Column(
            children: [
              const VerticalSpeacing(100.0),
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50.0),
                      topLeft: Radius.circular(50.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const VerticalSpeacing(153.0),
                          const CardFieldCustom(
                            maxLines: 1,
                            text: 'Card Name',
                          ),
                          const CardFieldCustom(
                            maxLines: 1,
                            text: 'Card Number',
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: CardFieldCustom(
                                  maxLines: 1,
                                  text: 'Expiry Date',
                                ),
                              ),
                              SizedBox(width: 20.0),
                              Expanded(
                                child: CardFieldCustom(
                                  maxLines: 2,
                                  text: 'CVV',
                                ),
                              ),
                            ],
                          ),
                          const VerticalSpeacing(46.0),
                          RoundedButton(
                              title: 'Add card',
                              onpress: () {
                                Navigator.pop(context);
                              },
                              bgColor: AppColor.simpleBgbuttonColor,
                              titleColor: AppColor.simpleBgTextColor)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: (MediaQuery.of(context).size.width - 148.0) / 6,
            left: (MediaQuery.of(context).size.width - 250.0) / 2,
            child: Container(
              width: 250.0,
              height: 148.0,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xff2CFFFF), Color(0xff218F90)],
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(29.0),
                  child: Image.asset("images/masterCard.png"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
