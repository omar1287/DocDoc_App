import 'package:docdoc_app/core/widget/blue_title_with_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FillProfileScreenBody extends StatelessWidget {
  const FillProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 30.w),
        child: Column(
          children: [
            const BlueTitleWithDescription(
              title: 'Fill Your Profile',
              description:
                  'Please take a few minutes to fill out your profile with as much detail as possible.',
            ),
            SizedBox( height: 32.h),

          ],
        ),
      ),
    ));
  }
}
