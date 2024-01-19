import 'package:docdoc_app/core/Theming/colors.dart';
import 'package:docdoc_app/core/Theming/textstyle.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class richText extends StatelessWidget {
  const richText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
      TextSpan(
        text: 'By logging, you agree to our ',
        style: AppTextStyle.fontsizebold12semi.copyWith(
          color: ColorManager.maingrayform
        )
      ),
          TextSpan(
              text: ' Terms & Conditions ',
              style: AppTextStyle.fontsizebold12semi.copyWith(
                  color:Colors.black
              )
          ),
          TextSpan(
              text: 'and',
              style: AppTextStyle.fontsizebold12semi.copyWith(
                  color: ColorManager.maingrayform
              )
          ),
          TextSpan(
              text: 'PrivacyPolicy. ',
              style: AppTextStyle.fontsizebold12semi.copyWith(
                  color:Colors.black
              )
          ),

    ]));
  }
}
