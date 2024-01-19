import 'package:docdoc_app/Features/Login/UI/login/Widgets/already%20_have_account.dart';
import 'package:docdoc_app/Features/Login/UI/login/Widgets/custom_elvated_button.dart';
import 'package:docdoc_app/Features/Login/UI/login/Widgets/custom_text.dart';
import 'package:docdoc_app/Features/Login/UI/login/Widgets/custom_textform.dart';
import 'package:docdoc_app/Features/Login/UI/login/Widgets/rich_text.dart';
import 'package:docdoc_app/core/Theming/colors.dart';
import 'package:docdoc_app/core/Theming/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: 100.h,horizontal: 30.w),
          child: Column(

            children: [
             const customText(),
              const SizedBox(
                height: 40,
              ),
              customTextForm(hinttext: 'email',),
              const SizedBox(
                height: 15,
              ),
              customTextForm(hinttext: 'password',),
              const SizedBox(
                height: 15,
              ),
              const customElvatedButton(),
              const SizedBox(
                height: 20,
              ),
              const richText(),
              const SizedBox(
                height: 15,
              ),
              const alreadyHaveAccount()
            ],
          ),
        ),
      ),
    );
  }
}
