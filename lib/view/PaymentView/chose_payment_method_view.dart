import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/routes/routes_name.dart';
import 'package:emos/view/PaymentView/widgets/payment_complete_popup.dart';
import 'package:emos/view/PaymentView/widgets/payment_method_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChosePaymentMethodView extends StatefulWidget {
  const ChosePaymentMethodView({super.key});

  @override
  State<ChosePaymentMethodView> createState() => _ChosePaymentMethodViewState();
}

class _ChosePaymentMethodViewState extends State<ChosePaymentMethodView> {
  bool firstColor = true;
  bool secondColor = false;
  bool thirdColor = false;

  bool fourthColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgFillColor,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 33,
        ),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(24),
            ),
            color: AppColor.whiteColor,
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Add a Payment",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                const VerticalSpeacing(
                  20,
                ),
                PaymentMethodCard(
                  text: "Payment at the hospital",
                  image: "images/handcash.png",
                  fun: () {
                    setState(() {
                      firstColor = !firstColor;
                      secondColor = false;
                      thirdColor = false;

                      fourthColor = false;
                    });
                  },
                  containerColor: firstColor
                      ? AppColor.textFieldColor
                      : AppColor.whiteColor,
                  radioButtonColor:
                      firstColor ? AppColor.bgFillColor : AppColor.whiteColor,
                ),
                const VerticalSpeacing(
                  14,
                ),
                PaymentMethodCard(
                  text: "**** **** **** 2109",
                  image: "images/visa.png",
                  fun: () {
                    setState(() {
                      firstColor = false;
                      secondColor = !secondColor;
                      thirdColor = false;

                      fourthColor = false;
                    });
                  },
                  containerColor: secondColor
                      ? AppColor.textFieldColor
                      : AppColor.whiteColor,
                  radioButtonColor:
                      secondColor ? AppColor.bgFillColor : AppColor.whiteColor,
                ),
                const VerticalSpeacing(
                  14,
                ),
                PaymentMethodCard(
                  text: "**** **** **** 1210",
                  image: "images/master.png",
                  fun: () {
                    setState(() {
                      firstColor = false;
                      secondColor = false;
                      thirdColor = !thirdColor;

                      fourthColor = false;
                    });
                  },
                  containerColor: thirdColor
                      ? AppColor.textFieldColor
                      : AppColor.whiteColor,
                  radioButtonColor:
                      thirdColor ? AppColor.bgFillColor : AppColor.whiteColor,
                ),
                const VerticalSpeacing(
                  14,
                ),
                PaymentMethodCard(
                  text: "Kaixa Pham",
                  image: "images/paypal.png",
                  fun: () {
                    setState(() {
                      firstColor = false;
                      secondColor = false;
                      thirdColor = false;

                      fourthColor = !fourthColor;
                    });
                  },
                  containerColor: fourthColor
                      ? AppColor.textFieldColor
                      : AppColor.whiteColor,
                  radioButtonColor:
                      fourthColor ? AppColor.bgFillColor : AppColor.whiteColor,
                ),
                const VerticalSpeacing(
                  14,
                ),
                RoundedButton(
                  title: "Add New Card",
                  onpress: () {
                    Navigator.pushNamed(
                      context,
                      RouteName.addCardview,
                    );
                  },
                  bgColor: AppColor.whiteColor,
                  titleColor: AppColor.bgFillColor,
                ),
                const Spacer(),
                RoundedButton(
                  title: "Continue",
                  onpress: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            const PaymentCompletePopup());
                  },
                  bgColor: AppColor.bgFillColor,
                  titleColor: AppColor.whiteColor,
                ),
                const VerticalSpeacing(12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
