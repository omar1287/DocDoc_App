import 'package:flutter/material.dart';

import 'widgets/fill_profile_screen_body.dart';

class FillProfileScreen extends StatelessWidget {
  const FillProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  FillProfileScreenBody(),
    );
  }
}