import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/view/MyBookings/widgets/my_booking_card.dart';
import 'package:flutter/material.dart';

class MyBookingsView extends StatelessWidget {
  const MyBookingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        VerticalSpeacing(50.0),
        MybookingCard(),
      ],
    ));
  }
}
