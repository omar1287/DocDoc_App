import 'package:docdoc_app/core/Helpers/extension.dart';
import 'package:docdoc_app/core/Routting/Routs.dart';
import 'package:docdoc_app/core/Theming/colors.dart';
import 'package:docdoc_app/core/Theming/textstyle.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class AlreadyHaveAccountToSignIn extends StatelessWidget {
  const AlreadyHaveAccountToSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account yet?',
          style: AppTextStyle.fontsizebold12semi.copyWith(color: Colors.black),
        ),
        TextButton(onPressed: (){
          context.pushNamed(Routes.loginscreen);
        }, child: Text('Sign In ',style: AppTextStyle.fontsizebold12semi.copyWith(
            color: ColorManager.mainblue
        ),))
      ],
    );
  }
}
