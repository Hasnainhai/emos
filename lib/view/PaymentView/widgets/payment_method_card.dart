import 'package:emos/res/GlobalColors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethodCard extends StatelessWidget {
  const PaymentMethodCard(
      {super.key,
      required this.text,
      required this.image,
      required this.fun,
      required this.containerColor,
      required this.radioButtonColor});
  final String text;
  final String image;
  final Function() fun;
  final Color containerColor;
  final Color radioButtonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: fun,
      child: Container(
        height: MediaQuery.of(context).size.height / 14,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: AppColor.textFieldColor,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 14,
            right: 14,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    image,
                    height: 32,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    text,
                    style: GoogleFonts.getFont(
                      "Roboto",
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColor.textColor,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.bgFillColor,
                    border: Border.all(
                      color: radioButtonColor,
                      width: 6,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
