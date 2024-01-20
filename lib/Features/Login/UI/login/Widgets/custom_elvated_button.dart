import 'package:docdoc_app/core/Helpers/extension.dart';
import 'package:docdoc_app/core/Routting/Routs.dart';
import 'package:docdoc_app/core/Theming/colors.dart';
import 'package:docdoc_app/core/Theming/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class CustomElvatedButton extends StatelessWidget {
   CustomElvatedButton({super.key, required this.value});

  String value;

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
                borderRadius: BorderRadius.circular(20))),
        child: Text(
          value,
          style: AppTextStyle.fontsizebold20.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
