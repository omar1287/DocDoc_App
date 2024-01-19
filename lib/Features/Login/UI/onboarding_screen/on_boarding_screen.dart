import 'package:docdoc_app/Features/Login/UI/onboarding_screen/Widgets/onboarding_body.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
        body: onboardingBody(),
      ),
    );
  }
}
