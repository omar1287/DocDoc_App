import 'package:docdoc_app/core/Theming/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class customLogo extends StatelessWidget {
  const customLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/app_logo.png'),
        SizedBox(
          width: 5.w,
        ),
        Text('Docdoc',style: AppTextStyle.fontsizebold25,)
      ],
    );
  }
}
