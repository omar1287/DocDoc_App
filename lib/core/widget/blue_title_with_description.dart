import 'package:docdoc_app/core/Theming/colors.dart';
import 'package:docdoc_app/core/Theming/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlueTitleWithDescription extends StatelessWidget {
  final String title;
  final String description;

  const BlueTitleWithDescription(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: AppTextStyle.fontsizebold25.copyWith(
              color: ColorManager.mainblue,
            )),
        SizedBox(height: 8.h),
        Text(description,
            style: AppTextStyle.fontsizebold15semi
                .copyWith(color: ColorManager.maingray)),
      ],
    );
  }
}
