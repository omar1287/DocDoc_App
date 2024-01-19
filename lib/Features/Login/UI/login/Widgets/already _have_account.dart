import 'package:docdoc_app/core/Theming/colors.dart';
import 'package:docdoc_app/core/Theming/textstyle.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class alreadyHaveAccount extends StatelessWidget {
  const alreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account yet?',
          style: AppTextStyle.fontsizebold12semi.copyWith(color: Colors.black),
        ),
        TextButton(onPressed: (){}, child: Text('Sign Up ',style: AppTextStyle.fontsizebold12semi.copyWith(
          color: ColorManager.mainblue
        ),))
      ],
    );
  }
}
