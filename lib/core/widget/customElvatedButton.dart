import 'package:docdoc_app/core/Routting/Routs.dart';
import 'package:docdoc_app/core/Theming/colors.dart';
import 'package:docdoc_app/core/Theming/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElvatedButton extends StatelessWidget {
  const CustomElvatedButton(
      {super.key, required this.text, required this.onPressed});

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorManager.mainblue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Text(
          text,
          style: AppTextStyle.fontsizebold20.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
