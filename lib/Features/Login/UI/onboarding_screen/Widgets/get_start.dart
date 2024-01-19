import 'package:docdoc_app/core/Helpers/extension.dart';
import 'package:docdoc_app/core/Routting/Routs.dart';
import 'package:docdoc_app/core/Theming/colors.dart';
import 'package:docdoc_app/core/Theming/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStart extends StatelessWidget {
  const GetStart({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: 50.h,
        width: 300.w,
        child: ElevatedButton(onPressed: (){
          context.pushNamed(Routes.loginscreen);
        },style: ElevatedButton.styleFrom(
          backgroundColor: ColorManager.mainblue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          )
        ), child: Text('Get Started',style:AppTextStyle.fontsizebold15 ,),));
  }
}
