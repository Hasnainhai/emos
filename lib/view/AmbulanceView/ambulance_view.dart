import 'package:flutter/material.dart';

class AmbulanceView extends StatelessWidget {
  const AmbulanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Map Here"),
        ),
      ),
    );
  }
}
