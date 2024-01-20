import 'package:docdoc_app/core/Theming/colors.dart';
import 'package:docdoc_app/core/Theming/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElvatedButtonRegister extends StatelessWidget {
  const CustomElvatedButtonRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55.h,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorManager.mainblue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            )
        ),
        child: Text(
          'Create Account',
          style: AppTextStyle.fontsizebold20.copyWith(color: Colors.white),
        ),),
    );
  }
}
