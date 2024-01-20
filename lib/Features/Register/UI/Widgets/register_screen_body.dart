import 'package:docdoc_app/Features/Login/UI/login/Widgets/custom_textform.dart';
import 'package:docdoc_app/Features/Login/UI/login/Widgets/rich_text.dart';
import 'package:docdoc_app/Features/Register/Logic/enter_your_number_cubit/enter%20_your_number_state.dart';
import 'package:docdoc_app/Features/Register/Logic/enter_your_number_cubit/enter_your_num_cubit.dart';
import 'package:docdoc_app/Features/Register/UI/Widgets/alreadyHaveAccountToSignIn.dart';
import 'package:docdoc_app/Features/Register/UI/Widgets/customElvatedButton_register.dart';
import 'package:docdoc_app/Features/Register/UI/Widgets/custom_enter_your_number.dart';
import 'package:docdoc_app/core/widget/blue_title_with_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>EnterYourNumberCubit(),
      child: BlocConsumer<EnterYourNumberCubit,EnterYourNumberState>(
        builder: (context,state){
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 30.w),
                  child:   const Column(
                    children: [
                      BlueTitleWithDescription(
                        title: 'Create Account',
                        description:
                        'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
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
                      SizedBox(
                        height: 15,
                      ),
                      CustomEnterYourNumber(),
                      SizedBox(
                        height: 30,
                      ),
                      CustomElvatedButtonRegister(),
                      SizedBox(
                        height: 40,
                      ),
                      richText(),
                      SizedBox(
                        height: 3,
                      ),
                      AlreadyHaveAccountToSignIn()
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        listener: (context,state){},
      ),
    );
  }
}
