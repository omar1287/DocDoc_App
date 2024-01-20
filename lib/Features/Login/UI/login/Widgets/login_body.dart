import 'package:docdoc_app/Features/Login/UI/login/Widgets/already%20_have_account.dart';
import 'package:docdoc_app/Features/Login/UI/login/Widgets/custom_elvated_button.dart';
import 'package:docdoc_app/Features/Login/UI/login/Widgets/forget_password.dart';
import 'package:docdoc_app/core/widget/blue_title_with_description.dart';
import 'package:docdoc_app/Features/Login/UI/login/Widgets/custom_textform.dart';
import 'package:docdoc_app/Features/Login/UI/login/Widgets/rich_text.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 30.w),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BlueTitleWithDescription(
                title: 'Welcome Back',
                description: 'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
              ),
              SizedBox(
                height: 40,
              ),
              CustomTextForm(
                hinttext: 'email',
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextForm(
                hinttext: 'password',
              ),
              ForgetPassword(),

              CustomElvatedButton(value: "Login",),
              SizedBox(
                height: 20,
              ),
              richText(),
              SizedBox(
                height: 15,
              ),
              alreadyHaveAccount()
            ],
          ),
        ),
      ),
    );
  }
}
