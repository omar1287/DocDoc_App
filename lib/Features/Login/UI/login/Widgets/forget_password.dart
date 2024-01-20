import 'package:docdoc_app/core/Helpers/extension.dart';
import 'package:docdoc_app/core/Routting/Routs.dart';
import 'package:docdoc_app/core/Theming/colors.dart';
import 'package:docdoc_app/core/Theming/textstyle.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return
        TextButton(onPressed: (){
          context.pushNamed(Routes.forgetpasswordscreen);
        }, child: Text('Forgot Password?',style: AppTextStyle.fontsizebold12semi.copyWith(
            color: ColorManager.mainblue
        ),));

  }
}
