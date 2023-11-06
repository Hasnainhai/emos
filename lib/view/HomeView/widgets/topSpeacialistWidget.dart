import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../res/GlobalColors/colors.dart';

class TopSpeacialistCardWidget extends StatelessWidget {
  const TopSpeacialistCardWidget({
    super.key,
    required this.fun,
  });
  final Function() fun;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: fun,
      child: Container(
        height: 88.0,
        width: 258.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(width: 1.0, color: AppColor.textFieldColor),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                height: 56.0,
                width: 56.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://media.istockphoto.com/id/1311511363/photo/headshot-portrait-of-smiling-male-doctor-with-tablet.jpg?s=612x612&w=0&k=20&c=w5TecWtlA_ZHRpfGh20II-nq5AvnhpFu6BfOfMHuLMA=',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 16.0),
              Text.rich(
                TextSpan(
                  text: 'Dr. Sutash Sing\n',
                  style: GoogleFonts.getFont(
                    "Poppins",
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColor.textColor,
                    ),
                  ),
                  children: [
                    TextSpan(
                      text: 'Radiologist\n',
                      style: GoogleFonts.getFont(
                        "Poppins",
                        textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: AppColor.dTxtColor,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: '⭐️ 4.8(13 Reviews)',
                      style: GoogleFonts.getFont(
                        "Poppins",
                        textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: AppColor.dTxtColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
