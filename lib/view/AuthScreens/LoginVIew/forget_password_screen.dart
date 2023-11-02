import 'package:emos/components/coustem_text_field/coustem_text_field.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              TextFieldCustom(
                maxLines: 1,
                hintText: "Example@gmail.com",
                icon: Icons.email,
              )
            ],
          ),
        ),
      ),
    );
  }
}
