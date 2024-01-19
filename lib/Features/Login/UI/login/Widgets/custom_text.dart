import 'package:docdoc_app/core/Theming/colors.dart';
import 'package:docdoc_app/core/Theming/textstyle.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class customText extends StatelessWidget {
  const customText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(
      'Welcome Back',
      style: AppTextStyle.fontsizebold25
          .copyWith(color: ColorManager.mainblue,
      )),
        const SizedBox(
          height: 20,
        ),
        Text(
            'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
            style: AppTextStyle.fontsizebold15semi.copyWith(
              color:ColorManager.maingray
            )
  ),
      ],
    );
  }
}
