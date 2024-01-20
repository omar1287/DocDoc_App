import 'package:docdoc_app/Features/Login/UI/login/Widgets/custom_elvated_button.dart';
import 'package:docdoc_app/Features/Login/UI/login/Widgets/custom_textform.dart';
import 'package:docdoc_app/core/widget/blue_title_with_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 30.w),
            child: Column(
              children: [
                const BlueTitleWithDescription(
                  title: 'Forgot Password',
                  description:
                      'At our app, we take the security of your information seriously.',
                ),
                const SizedBox(
                  height: 40,
                ),
                const CustomTextForm(
                  hinttext: 'Email or Phone Number',
                ),
                SizedBox(
                  height: 400.h,
                ),
                CustomElvatedButton(value: "Reset Password")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
