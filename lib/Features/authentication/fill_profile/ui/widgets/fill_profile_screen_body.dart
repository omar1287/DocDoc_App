import 'package:docdoc_app/core/Routting/Routs.dart';
import 'package:docdoc_app/core/widget/blue_title_with_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widget/customElvatedButton.dart';
import '../../../../Login/UI/login/Widgets/custom_textform.dart';
import '../../../register/UI/Widgets/custom_enter_your_number.dart';

class FillProfileScreenBody extends StatelessWidget {
  const FillProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 30.w),
        child: Column(
          children: <Widget>[
            const BlueTitleWithDescription(
              title: 'Fill Your Profile',
              description:
                  'Please take a few minutes to fill out your profile with as much detail as possible.',
            ),
            SizedBox(height: 32.h),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset(
                  'assets/images/no_profile_image.png',
                  fit: BoxFit.fill,
                  color: Colors.black.withOpacity(0.5),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20.r,
                    child: const Icon(
                      Icons.add_a_photo_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            const CustomTextForm(
              hinttext: 'Full Name',
            ),
            SizedBox(
              height: 16.h,
            ),
            const CustomTextForm(
              hinttext: 'Email',
            ),
            SizedBox(
              height: 16.h,
            ),
            const CustomTextForm(
              hinttext: 'Birthday',
            ),
            SizedBox(
              height: 16.h,
            ),
            const CustomEnterYourNumber(),
            SizedBox(
              height: 32.h,
            ),
            CustomElvatedButton(text: 'Submit', onPressed: () {
              Navigator.pushNamed(context, Routes.otpScreen);
            })
          ],
        ),
      ),
    ));
  }
}
